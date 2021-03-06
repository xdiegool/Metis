/* -*- c++ -*- */
/* 
 * Copyright 2012 Thomas C. McDermott, N5EG.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

//
// Version: December 15, 2012


#ifndef INCLUDED_HPSDR_HERMESNB_H
#define INCLUDED_HPSDR_HERMESNB_H

#include <hpsdr_api.h>
#include <gr_block.h>



class hpsdr_hermesNB;
typedef boost::shared_ptr<hpsdr_hermesNB> hpsdr_hermesNB_sptr;

/*! \brief Make a HermesNB module
 * \param RxF    Receive frequency, Hz.
 * \param RxSmp  Receive Sample Rate, 192000, 96000, or 48000
 * \param RxPre  Rx Preamp on (1) / off (0)
 * \param Intfc  Ethernet interface to use
 * \param NumRx  Number of Receivers (1 or 2)
 * \param ClkS   HPSDR Clock Source (register C1 when C0 = 0x00)
 * \param AlexC  HPSDR Alex Control (register (MSB)C3, C4 for C0=0 and C3, C4(LSB) for C0 = 0x12)
 *
 */

HPSDR_API hpsdr_hermesNB_sptr hpsdr_make_hermesNB (int RxF, int RxSmp, int RxPre,
	 const char* Intfc, const char * ClkS, const char * AlexC, int NumRx);

/*!
 * \brief Prototype for Hermes module
 *
 * \details
 * Initial prototype to allow recieving IQ data from Hermes
 * Supports callbacks which allow sliders to change values at runtime.
 *
 * \param RxF    Receive frequency, Hz.
 * \param RxSmp  Receive Sample Rate, 192000, 96000, or 48000
 * \param RxPre  Rx Preamp on (1) / off (0)
 * \param Intfc  Ethernet interface to use
 * \param NumRx  Number of Receivers (1 or 2)
 * \param ClkS   HPSDR Clock Source (register C1 when C0 = 0x00)
 * \param AlexC  HPSDR Alex Control (register (MSB)C3, C4 for C0=0 and C3, C4(LSB) for C0 = 0x12)
 *
 */
class HPSDR_API hpsdr_hermesNB : public gr_block
{
	friend HPSDR_API hpsdr_hermesNB_sptr hpsdr_make_hermesNB (int RxF, int RxSmp,
		 int RxPre, const char* Intfc, const char* ClkS, const char* AlexC, int NumRx);

	hpsdr_hermesNB (int RxF, int RxSmp, int RxPre, const char* Intfc,
		const char* ClkS, const char* AlexC, int NumRx);

 public:
	~hpsdr_hermesNB();
	void set_Receive0Frequency(float);	// callback
	void set_Receive1Frequency(float);	// callback
	void set_TransmitFrequency(float);	// callback
	void set_RxSampRate(int);		// callback
	void set_RxPreamp(int);			// callback
	void set_PTTMode(int);			// callback
	void set_PTTOffMutesTx(int);		// callback
	void set_PTTOnMutesRx(int);		// callback
	void set_TxDrive(int);			// callback
	void set_ClockSource(const char *);	// callback
	void set_AlexControl(const char *);	// callback

	bool stop();				// override
	bool start();				// override


  int general_work (int noutput_items,
		    gr_vector_int &ninput_items,
		    gr_vector_const_void_star &input_items,
		    gr_vector_void_star &output_items);
};

#endif /* INCLUDED_HPSDR_HERMESNB_H */

