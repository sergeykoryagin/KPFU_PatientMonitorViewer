#include "patientsparams.h"
#include <random>


PatientsParams::PatientsParams(QObject *parent) :
    QObject(parent),
    params(QVariantMap()),
    timer(new QTimer(this)),
    m_ecgV(0), m_prV(0), m_t1V(0), m_t2V(0),
    m_ibp1V(0), m_ibp2V(0), m_etco2V(0), m_fico2V(0),
    m_awprV(0), m_nibpV(0), m_spo2V(0)
{





    connect(timer, &QTimer::timeout, [=](){
        setEcgV(rand() % 10 + 100);
        setPrV(rand() % 100 + 50);
        setSpo2V(rand() % 10 + 90);
        setT1V(rand() % 12 + 30);
        setT2V(rand() % 12 + 30);
        setIbp1V(rand() % 120 + 80);
        setIbp2V(rand() % 120 + 80);
        setEtco2V(rand() % 50);
        setFico2V(rand() % 50);
        setAwprV(rand() % 50);
        setNibpV(rand() % 120 + 80);
    });


    timer->start(1000);

}

int PatientsParams::ecgV() const
{
    return m_ecgV;
}

int PatientsParams::prV() const
{
    return m_prV;
}

int PatientsParams::t1V() const
{
    return m_t1V;
}

int PatientsParams::t2V() const
{
    return m_t2V;
}

int PatientsParams::ibp1V() const
{
    return m_ibp1V;
}

int PatientsParams::ibp2V() const
{
    return m_ibp2V;
}

int PatientsParams::etco2V() const
{
    return m_etco2V;
}

int PatientsParams::fico2V() const
{
    return m_fico2V;
}

int PatientsParams::awprV() const
{
    return m_awprV;
}

int PatientsParams::nibpV() const
{
    return m_nibpV;
}

int PatientsParams::spo2V() const
{
    return m_prV;
}

void PatientsParams::setEcgV(int ecgV)
{
    if (m_ecgV == ecgV)
        return;

    m_ecgV = ecgV;
    emit ecgVChanged(m_ecgV);
}

void PatientsParams::setPrV(int prV)
{
    if (m_prV == prV)
        return;

    m_prV = prV;
    emit prVChanged(m_prV);
}

void PatientsParams::setT1V(int t1V)
{
    if (m_t1V == t1V)
        return;

    m_t1V = t1V;
    emit t1VChanged(m_t1V);
}

void PatientsParams::setT2V(int t2V)
{
    if (m_t2V == t2V)
        return;

    m_t2V = t2V;
    emit t2VChanged(m_t2V);
}

void PatientsParams::setIbp1V(int ibp1V)
{
    if (m_ibp1V == ibp1V)
        return;

    m_ibp1V = ibp1V;
    emit ibp1VChanged(m_ibp1V);
}

void PatientsParams::setIbp2V(int ibp2V)
{
    if (m_ibp2V == ibp2V)
        return;

    m_ibp2V = ibp2V;
    emit ibp2VChanged(m_ibp2V);
}

void PatientsParams::setEtco2V(int etco2V)
{
    if (m_etco2V == etco2V)
        return;

    m_etco2V = etco2V;
    emit etco2VChanged(m_etco2V);
}

void PatientsParams::setFico2V(int fico2V)
{
    if (m_fico2V == fico2V)
        return;

    m_fico2V = fico2V;
    emit fico2VChanged(m_fico2V);
}

void PatientsParams::setAwprV(int awprV)
{
    if (m_awprV == awprV)
        return;

    m_awprV = awprV;
    emit awprVChanged(m_awprV);
}

void PatientsParams::setNibpV(int nibpV)
{
    if (m_nibpV == nibpV)
        return;

    m_nibpV = nibpV;
    emit nibpVChanged(m_nibpV);
}

void PatientsParams::setSpo2V(int prV)
{
    if (m_prV == prV)
        return;

    m_prV = prV;
    emit spo2VChanged(m_prV);
}

