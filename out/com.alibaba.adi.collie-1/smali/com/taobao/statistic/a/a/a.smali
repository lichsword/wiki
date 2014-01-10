.class public Lcom/taobao/statistic/a/a/a;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static iz:Lcom/ut/device/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/statistic/a/a/a;->iz:Lcom/ut/device/b;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/ut/device/b;
    .locals 21
    .parameter "context"

    .prologue
    .line 26
    const-class v18, Lcom/taobao/statistic/a/a/a;

    monitor-enter v18

    :try_start_0
    sget-object v17, Lcom/taobao/statistic/a/a/a;->iz:Lcom/ut/device/b;

    if-eqz v17, :cond_0

    .line 27
    sget-object v5, Lcom/taobao/statistic/a/a/a;->iz:Lcom/ut/device/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :goto_0
    monitor-exit v18

    return-object v5

    .line 29
    :cond_0
    if-eqz p0, :cond_a

    .line 30
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/ut/device/UTDevice;->a(Landroid/content/Context;)Lcom/ut/device/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 31
    .local v5, device:Lcom/ut/device/b;
    if-eqz v5, :cond_5

    .line 33
    :try_start_2
    const-string v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 35
    .local v12, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v12, :cond_1

    .line 36
    const/4 v5, 0x0

    goto :goto_0

    .line 38
    :cond_1
    sget-object v17, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->setDeviceModel(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 41
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 43
    .local v11, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 44
    .local v15, versionName:Ljava/lang/String;
    iget v14, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 45
    .local v14, versionCode:I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->ak(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v5, v15}, Lcom/ut/device/b;->setAppVersion(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 51
    .end local v11           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v14           #versionCode:I
    .end local v15           #versionName:Ljava/lang/String;
    :goto_1
    :try_start_4
    sget-object v17, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->setBrand(Ljava/lang/String;)V

    .line 52
    const-string v17, "Android"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->al(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/taobao/statistic/a/a/a;->aB()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 54
    const-string v17, "aliyunos"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->al(Ljava/lang/String;)V

    .line 56
    :cond_2
    sget-object v17, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->setOsVersion(Ljava/lang/String;)V

    .line 57
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 58
    .local v4, configuration:Landroid/content/res/Configuration;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 61
    if-eqz v4, :cond_8

    iget-object v0, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 63
    iget-object v0, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->setCountry(Ljava/lang/String;)V

    .line 64
    iget-object v0, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->setLanguage(Ljava/lang/String;)V

    .line 65
    iget-object v0, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    .line 66
    .local v3, calendar:Ljava/util/Calendar;
    if-eqz v3, :cond_7

    .line 67
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v13

    .line 68
    .local v13, timezone:Ljava/util/TimeZone;
    if-eqz v13, :cond_6

    .line 69
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v19

    const v20, 0x36ee80

    div-int v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->ai(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    .line 83
    .end local v3           #calendar:Ljava/util/Calendar;
    .end local v13           #timezone:Ljava/util/TimeZone;
    :goto_2
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 85
    .local v6, dm:Landroid/util/DisplayMetrics;
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 86
    .local v16, width:I
    iget v8, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 87
    .local v8, height:I
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->X(I)V

    .line 88
    invoke-virtual {v5, v8}, Lcom/ut/device/b;->Y(I)V

    .line 89
    move/from16 v0, v16

    if-le v0, v8, :cond_3

    .line 90
    xor-int v16, v16, v8

    .line 91
    xor-int v8, v8, v16

    .line 92
    xor-int v16, v16, v8

    .line 94
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "*"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->setResolution(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1

    .line 99
    .end local v6           #dm:Landroid/util/DisplayMetrics;
    .end local v8           #height:I
    .end local v16           #width:I
    :goto_3
    :try_start_6
    invoke-static/range {p0 .. p0}, Lorg/usertrack/android/utils/i;->m(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, networkStatus:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v10, v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->setAccess(Ljava/lang/String;)V

    .line 102
    const/16 v17, 0x0

    aget-object v17, v10, v17

    const-string v19, "2G/3G"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 103
    const/16 v17, 0x1

    aget-object v17, v10, v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->aj(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1

    .line 112
    .end local v10           #networkStatus:[Ljava/lang/String;
    :goto_4
    :try_start_7
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, networkName:Ljava/lang/String;
    invoke-static {v9}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 115
    const-string v9, ""

    .line 117
    :cond_4
    invoke-virtual {v5, v9}, Lcom/ut/device/b;->setCarrier(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lorg/usertrack/android/utils/p;->eE()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->setCpu(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1

    .line 123
    .end local v4           #configuration:Landroid/content/res/Configuration;
    .end local v9           #networkName:Ljava/lang/String;
    .end local v12           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_5
    :try_start_8
    sput-object v5, Lcom/taobao/statistic/a/a/a;->iz:Lcom/ut/device/b;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 26
    .end local v5           #device:Lcom/ut/device/b;
    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17

    .line 47
    .restart local v5       #device:Lcom/ut/device/b;
    .restart local v12       #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v7

    .line 48
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_9
    const-string v17, "Unknown"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->ak(Ljava/lang/String;)V

    .line 49
    const-string v17, "Unknown"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->setAppVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 119
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v7

    .line 120
    .local v7, e:Ljava/lang/SecurityException;
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 72
    .end local v7           #e:Ljava/lang/SecurityException;
    .restart local v3       #calendar:Ljava/util/Calendar;
    .restart local v4       #configuration:Landroid/content/res/Configuration;
    .restart local v12       #telephonyManager:Landroid/telephony/TelephonyManager;
    .restart local v13       #timezone:Ljava/util/TimeZone;
    :cond_6
    const-string v17, "8"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->ai(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 75
    .end local v13           #timezone:Ljava/util/TimeZone;
    :cond_7
    const-string v17, "8"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->ai(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 78
    .end local v3           #calendar:Ljava/util/Calendar;
    :cond_8
    const-string v17, "Unknown"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->setCountry(Ljava/lang/String;)V

    .line 79
    const-string v17, "Unknown"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->setLanguage(Ljava/lang/String;)V

    .line 80
    const-string v17, "8"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->ai(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 95
    :catch_2
    move-exception v7

    .line 96
    .local v7, e:Ljava/lang/Exception;
    const-string v17, "Unknown"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->setResolution(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    .line 105
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v10       #networkStatus:[Ljava/lang/String;
    :cond_9
    :try_start_a
    const-string v17, "Unknown"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->aj(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    .line 107
    .end local v10           #networkStatus:[Ljava/lang/String;
    :catch_3
    move-exception v7

    .line 108
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_b
    const-string v17, "Unknown"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->setAccess(Ljava/lang/String;)V

    .line 109
    const-string v17, "Unknown"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/ut/device/b;->aj(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_4

    .line 126
    .end local v4           #configuration:Landroid/content/res/Configuration;
    .end local v5           #device:Lcom/ut/device/b;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v12           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private static aB()Z
    .locals 2

    .prologue
    .line 130
    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lemur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "ro.yunos.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 133
    :cond_1
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
