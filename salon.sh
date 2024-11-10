#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=salon --no-align --tuples-only -c"

# Introduction:
echo -e "\n~~~~ FREECODECAMP SALON ~~~~\n"
echo -e "Welcome to FreeCodeCamp Salon, how can I help you?\n"

# 1st function and one argument:
FIRST_MENU() {

  if [[ $1 ]]
  then
    echo -e "$1"
  fi

  # Let's select all available services (service_id and service names), from 1 to 5:
  ALL_SERVICES=$($PSQL "SELECT * FROM services ORDER BY service_id")

  # 1st loop, reading all services available:
  echo "$ALL_SERVICES" | while IFS="|" read SERVICE_ID NAME
  do
    echo "$SERVICE_ID) $NAME"
  done

  #user input and prompt; the user's choice for service_id:
  read SERVICE_ID_SELECTED

  #Let's call the next function:
  SALON_MENU
  }


SALON_MENU() {

  #id options, available options, from 1 to 5:
  if [[ ! $SERVICE_ID_SELECTED =~ ^[1-5]$ ]]
  then
    FIRST_MENU "I could not find that service. What would you like today?"
  else
    SERVICE_ID=$($PSQL "SELECT service_id FROM services WHERE service_id=$SERVICE_ID_SELECTED")

    if [[ -z $SERVICE_ID ]]
    then
      FIRST_MENU "I could not find that service. What would you like today?"
    else
      echo -e "\nWhat's your phone number?"
      read CUSTOMER_PHONE

      #get customer's name through its phone number:
      CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")

      #if we don't find the customer name:
      if [[ -z $CUSTOMER_NAME ]]
      then
        echo -e "\nI don't have a record for that phone number, what's your name?"
        read CUSTOMER_NAME

        #Let's register the customer's name and its phone number:
        REGISTER_NEW_CUSTOMER=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
      fi

      ### APPOINTMENTS TABLE
      #get service name:
      SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID")

      #get customer's id:
      CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

      #delete any extra spaces:
      echo -e "\nWhat time would you like your $(echo $SERVICE_NAME | sed 's/ //g'), $(echo $CUSTOMER_NAME | sed 's/ //g')?"

      #user writes the hour:
      read SERVICE_TIME

      REGISTER_CUSTOMER_APPOINTMENT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID, '$SERVICE_TIME')")

      echo -e "\nI have put you down for a $(echo $SERVICE_NAME | sed 's/ //g') at $SERVICE_TIME, $(echo $CUSTOMER_NAME | sed 's/ //g')."

    fi
  fi
}

FIRST_MENU










