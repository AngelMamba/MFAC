#pragma once
#include <cmath>

class Mfac
{
public:
	Mfac(const double & eta, const double & mu, const double & rho, const double & lambda, const double & epsilon);
	~Mfac();
	double out(double yd, double y);
protected:
	const double eta;           //!< ��
	const double mu;            //!< ��
	const double rho;			//!< ��
	const double lambda;		//!< ��
	const double epsilon;		//!< ��

	double yd;					//!< �������ֵ�������yd(k + 1)
	double y;					//!< ʵ�����ֵ
	double y_pre;				//!< ��һ�ε�ʵ�����ֵ
	double u;					//!< ����������
	double u_pre;				//!< ��һ�ο���������
	double du;					//!< u��΢��
	double du_pre;				//!< ��һ�ε�u��΢��
	double phi;					//!< PPD �յĹ���ֵ
	double phi_pre;				//!< ��һ��PPD �յĹ���ֵ
	const double phi_first;		//!< ��(1)��ֵ
};

