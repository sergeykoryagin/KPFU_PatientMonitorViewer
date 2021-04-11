#ifndef PATIENTSPARAMS_H
#define PATIENTSPARAMS_H

#include <QObject>
#include <QTimer>
#include <QVariantMap>

class PatientsParams : public QObject
{
    Q_OBJECT

    Q_PROPERTY(int ecgV READ ecgV WRITE setEcgV NOTIFY ecgVChanged)
    Q_PROPERTY(int prV READ prV WRITE setPrV NOTIFY prVChanged)
    Q_PROPERTY(int spo2V READ spo2V WRITE setSpo2V NOTIFY spo2VChanged)
    Q_PROPERTY(int t1V READ t1V WRITE setT1V NOTIFY t1VChanged)
    Q_PROPERTY(int t2V READ t2V WRITE setT2V NOTIFY t2VChanged)
    Q_PROPERTY(int ibp1V READ ibp1V WRITE setIbp1V NOTIFY ibp1VChanged)
    Q_PROPERTY(int ibp2V READ ibp2V WRITE setIbp2V NOTIFY ibp2VChanged)
    Q_PROPERTY(int etco2V READ etco2V WRITE setEtco2V NOTIFY etco2VChanged)
    Q_PROPERTY(int fico2V READ fico2V WRITE setFico2V NOTIFY fico2VChanged)
    Q_PROPERTY(int awprV READ awprV WRITE setAwprV NOTIFY awprVChanged)
    Q_PROPERTY(int nibpV READ nibpV WRITE setNibpV NOTIFY nibpVChanged)



public:
    explicit PatientsParams(QObject *parent = nullptr);

    QVariantMap params;

    int ecgV() const;
    int prV() const;
    int t1V() const;
    int t2V() const;
    int ibp1V() const;
    int ibp2V() const;
    int etco2V() const;
    int fico2V() const;
    int awprV() const;
    int nibpV() const;
    int spo2V() const;

public slots:
    void setEcgV(int ecgV);
    void setPrV(int prV);
    void setT1V(int t1V);
    void setT2V(int t2V);
    void setIbp1V(int ibp1V);
    void setIbp2V(int ibp2V);
    void setEtco2V(int etco2V);
    void setFico2V(int fico2V);
    void setAwprV(int awprV);
    void setNibpV(int nibpV);
    void setSpo2V(int prV);

signals:

    void ecgVChanged(int ecgV);
    void prVChanged(int prV);
    void t1VChanged(int t1V);
    void t2VChanged(int t2V);
    void ibp1VChanged(int ibp1V);
    void ibp2VChanged(int ibp2V);
    void etco2VChanged(int etco2V);
    void fico2VChanged(int fico2V);
    void awprVChanged(int awprV);
    void nibpVChanged(int nibpV);
    void spo2VChanged(int prV);

private:
    QTimer * timer;
    int m_ecgV;
    int m_prV;
    int m_t1V;
    int m_t2V;
    int m_ibp1V;
    int m_ibp2V;
    int m_etco2V;
    int m_fico2V;
    int m_awprV;
    int m_nibpV;
    int m_spo2V;
};

#endif // PATIENTSPARAMS_H
