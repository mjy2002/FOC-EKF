/*
 * spi.h
 *
 *  Created on: 2022��12��27��
 *      Author: admin
 */

#ifndef USER_SPI_H_
#define USER_SPI_H_

#include "ch32v30x.h"
u16 SPI1_ReadWriteByte(u16 TxData);
void spi_init(void);
#endif /* USER_SPI_H_ */
