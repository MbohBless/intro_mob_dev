#include "databasehandler.h"

DatabaseHandler::DatabaseHandler(QObject *parent):QObject(parent)
{
    m_networkManager=new QNetworkAccessManager(this);

}
