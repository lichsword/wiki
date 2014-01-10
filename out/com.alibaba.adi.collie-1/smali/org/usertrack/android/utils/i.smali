.class public Lorg/usertrack/android/utils/i;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public static l(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 17
    if-eqz p0, :cond_0

    .line 19
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 20
    .local v0, conManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 22
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 23
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 31
    .end local v0           #conManager:Landroid/net/ConnectivityManager;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 26
    .restart local v0       #conManager:Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v2

    .line 31
    .end local v0           #conManager:Landroid/net/ConnectivityManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)[Ljava/lang/String;
    .locals 8
    .parameter "paramContext"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 35
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "Unknown"

    aput-object v5, v0, v6

    const-string v5, "Unknown"

    aput-object v5, v0, v7

    .line 38
    .local v0, arrayOfString:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 40
    .local v4, localPackageManager:Landroid/content/pm/PackageManager;
    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 39
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 42
    const/4 v5, 0x0

    const-string v6, "Unknown"

    aput-object v6, v0, v5

    .line 69
    .end local v4           #localPackageManager:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v0

    .line 46
    .restart local v4       #localPackageManager:Landroid/content/pm/PackageManager;
    :cond_1
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 45
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 47
    .local v1, localConnectivityManager:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_2

    .line 48
    const/4 v5, 0x0

    const-string v6, "Unknown"

    aput-object v6, v0, v5

    goto :goto_0

    .line 66
    .end local v1           #localConnectivityManager:Landroid/net/ConnectivityManager;
    .end local v4           #localPackageManager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 52
    .restart local v1       #localConnectivityManager:Landroid/net/ConnectivityManager;
    .restart local v4       #localPackageManager:Landroid/content/pm/PackageManager;
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 53
    .local v2, localNetworkInfo1:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    .line 54
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_3

    .line 55
    const/4 v5, 0x0

    const-string v6, "Wi-Fi"

    aput-object v6, v0, v5

    goto :goto_0

    .line 59
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 60
    .local v3, localNetworkInfo2:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_0

    .line 62
    const/4 v5, 0x0

    const-string v6, "2G/3G"

    aput-object v6, v0, v5

    .line 63
    const/4 v5, 0x1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
