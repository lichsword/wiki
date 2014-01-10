.class public Lcom/autonavi/aps/amapapi/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static airPlaneModeOn(Landroid/content/Context;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 267
    if-nez p0, :cond_0

    move v0, v1

    .line 308
    :goto_0
    return v0

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 271
    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getSdk()I

    move-result v0

    const/16 v4, 0x11

    if-ge v0, v4, :cond_2

    .line 274
    :try_start_0
    const-string v4, "android.provider.Settings$System"

    .line 275
    const-string v0, "AIRPLANE_MODE_ON"

    invoke-static {v4, v0}, Lcom/autonavi/aps/amapapi/Reflect;->getStaticProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 276
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 278
    const/4 v6, 0x0

    aput-object v3, v5, v6

    .line 279
    const/4 v3, 0x1

    aput-object v0, v5, v3

    .line 280
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 281
    const/4 v3, 0x0

    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v0, v3

    .line 282
    const/4 v3, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v0, v3

    .line 283
    const-string v3, "getInt"

    invoke-static {v4, v3, v5, v0}, Lcom/autonavi/aps/amapapi/Reflect;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 284
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V

    :goto_1
    move v0, v1

    .line 308
    goto :goto_0

    .line 290
    :cond_2
    :try_start_1
    const-string v4, "android.provider.Settings$Global"

    .line 291
    const-string v0, "AIRPLANE_MODE_ON"

    invoke-static {v4, v0}, Lcom/autonavi/aps/amapapi/Reflect;->getStaticProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 292
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 294
    const/4 v6, 0x0

    aput-object v3, v5, v6

    .line 295
    const/4 v3, 0x1

    aput-object v0, v5, v3

    .line 296
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 297
    const/4 v3, 0x0

    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v0, v3

    .line 298
    const/4 v3, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v0, v3

    .line 299
    const-string v3, "getInt"

    invoke-static {v4, v3, v5, v0}, Lcom/autonavi/aps/amapapi/Reflect;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 300
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static asu2Dbm(I)I
    .locals 1
    .parameter

    .prologue
    .line 155
    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x71

    return v0
.end method

.method public static coordInCN(Landroid/location/Location;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 136
    if-nez p0, :cond_0

    .line 145
    :goto_0
    return v1

    .line 139
    :cond_0
    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const-wide v4, 0x4052400000000000L

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const-wide/high16 v4, 0x4061

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    move v1, v0

    .line 145
    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const-wide/high16 v4, 0x4008

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_4

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const-wide/high16 v4, 0x404b

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    :cond_4
    move v0, v1

    .line 143
    goto :goto_1
.end method

.method public static coordInCN(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 119
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 120
    const/4 v0, 0x1

    .line 121
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x4052496801711948L

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x4060e81600f34507L

    cmpl-double v2, v4, v6

    if-lez v2, :cond_2

    :cond_0
    move v0, v1

    .line 126
    :cond_1
    :goto_0
    return v0

    .line 123
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x400ecccccccccccdL

    cmpg-double v2, v4, v6

    if-ltz v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x404b212096787ce9L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    :cond_3
    move v0, v1

    .line 124
    goto :goto_0
.end method

.method public static distance([D)F
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 318
    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    .line 324
    :cond_0
    new-array v8, v2, [F

    .line 325
    aget-wide v0, p0, v9

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 326
    aget v0, v8, v9

    goto :goto_0
.end method

.method public static getCellType(Landroid/telephony/CellLocation;Landroid/content/Context;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x9

    const/4 v1, 0x1

    .line 183
    .line 184
    invoke-static {p1}, Lcom/autonavi/aps/amapapi/Utils;->airPlaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 185
    const-string v3, "air plane mode on"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/autonavi/aps/amapapi/Utils;->writeCat([Ljava/lang/Object;)V

    .line 197
    :goto_0
    return v0

    .line 187
    :cond_0
    instance-of v2, p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_1

    move v0, v1

    .line 189
    goto :goto_0

    .line 191
    :cond_1
    :try_start_0
    const-string v1, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    const/4 v0, 0x2

    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getJSONValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 207
    const-string v0, ""

    .line 209
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 210
    :catch_0
    move-exception v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 211
    const-string v3, "no value for "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/autonavi/aps/amapapi/Utils;->writeCat([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getMccMnc(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 165
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 166
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v4

    const-string v2, "0"

    aput-object v2, v1, v5

    .line 167
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 168
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 169
    const/4 v2, 0x5

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    .line 173
    :goto_0
    return-object v1

    .line 170
    :cond_0
    new-array v0, v5, [Ljava/lang/Object;

    .line 171
    const-string v2, "get mcc and mnc error"

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->writeCat([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getSdk()I
    .locals 3

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 382
    const-string v1, "android.os.Build$VERSION"

    .line 384
    :try_start_0
    const-string v2, "SDK_INT"

    invoke-static {v1, v2}, Lcom/autonavi/aps/amapapi/Reflect;->getStaticIntProp(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 399
    :goto_0
    return v0

    :catch_0
    move-exception v2

    .line 387
    :try_start_1
    const-string v2, "SDK"

    invoke-static {v1, v2}, Lcom/autonavi/aps/amapapi/Reflect;->getStaticProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 388
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 390
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getServ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 337
    if-nez p0, :cond_0

    .line 338
    const/4 v0, 0x0

    .line 340
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTime()J
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasGpsProvider(Landroid/location/LocationManager;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 233
    if-nez p0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    invoke-virtual {p0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_0

    .line 240
    const-string v0, "gps"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hasNetworkProvider(Landroid/location/LocationManager;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 250
    if-nez p0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 253
    :cond_1
    invoke-virtual {p0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    .line 254
    if-eqz v1, :cond_0

    .line 257
    const-string v0, "network"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isToStr(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 351
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 353
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 356
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 354
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method public static no(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 404
    return-void
.end method

.method public static printE(Ljava/lang/Throwable;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    return-void
.end method

.method public static setTimeOut(Lorg/apache/http/params/HttpParams;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 366
    const-string v0, "http.connection.timeout"

    .line 367
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 368
    const-string v0, "http.socket.timeout"

    .line 369
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 370
    const-string v0, "http.conn-manager.timeout"

    .line 371
    int-to-long v1, p1

    invoke-interface {p0, v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lorg/apache/http/params/HttpParams;

    .line 372
    return-void
.end method

.method public static testMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 80
    const-string v1, "http://aps.amap.com/APS/r"

    const-string v2, "test"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    sget-object v1, Lcom/autonavi/aps/amapapi/Const;->d:Ljava/lang/String;

    const-string v2, "test"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 84
    const-string v1, "http://cgicol.amap.com/collection/writedata?ver=v1.1_amap"

    const-string v2, "test"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 87
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 59
    const-string v0, "http://aps.amap.com/APS/r"

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 60
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-array v0, v4, [Ljava/lang/Object;

    .line 61
    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->writeCat([Ljava/lang/Object;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    sget-object v0, Lcom/autonavi/aps/amapapi/Const;->d:Ljava/lang/String;

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 63
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-array v0, v4, [Ljava/lang/Object;

    .line 64
    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->writeCat([Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_2
    const-string v0, "http://cgicol.amap.com/collection/writedata?ver=v1.1_amap"

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 66
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-array v0, v4, [Ljava/lang/Object;

    .line 67
    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->writeCat([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static writeCat(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    const-string v0, "d"

    invoke-static {p0, p1, v0}, Lcom/autonavi/aps/amapapi/Utils;->writeCat(Ljava/lang/String;ZLjava/lang/String;)V

    .line 39
    return-void
.end method

.method public static writeCat(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    return-void
.end method

.method public static varargs writeCat([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    return-void
.end method
