.class public Lcom/taobao/statistic/module/d/a;
.super Ljava/lang/Object;
.source "Helper.java"


# instance fields
.field private iF:Lcom/taobao/statistic/core/i;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 1
    .parameter "runtime"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/module/d/a;->iF:Lcom/taobao/statistic/core/i;

    .line 30
    iput-object p1, p0, Lcom/taobao/statistic/module/d/a;->iF:Lcom/taobao/statistic/core/i;

    .line 31
    return-void
.end method

.method private a(Landroid/content/pm/PackageInfo;)V
    .locals 14
    .parameter "pi"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 59
    if-eqz p1, :cond_c

    .line 60
    iget-object v9, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 61
    .local v9, pInfos:[Ljava/lang/String;
    if-eqz v9, :cond_c

    .line 62
    const/4 v3, 0x0

    .line 63
    .local v3, hI:Z
    const/4 v1, 0x0

    .line 64
    .local v1, hANS:Z
    const/4 v4, 0x0

    .line 65
    .local v4, hRPS:Z
    const/4 v2, 0x0

    .line 66
    .local v2, hGT:Z
    const/4 v5, 0x0

    .line 67
    .local v5, hWES:Z
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_5

    aget-object v8, v0, v6

    .line 68
    .local v8, pInfo:Ljava/lang/String;
    const-string v12, "android.permission.INTERNET"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 69
    const/4 v3, 0x1

    .line 71
    :cond_0
    const-string v12, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 72
    const/4 v1, 0x1

    .line 74
    :cond_1
    const-string v12, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 75
    const/4 v4, 0x1

    .line 77
    :cond_2
    const-string v12, "android.permission.GET_TASKS"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 78
    const/4 v2, 0x1

    .line 80
    :cond_3
    const-string v12, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 81
    const/4 v5, 0x1

    .line 67
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 84
    .end local v8           #pInfo:Ljava/lang/String;
    :cond_5
    if-nez v3, :cond_6

    .line 85
    const-string v12, "PermissionsLabelValidate"

    const-string v13, "Please add in AndroidManifest.xml<uses-permission android:name=\"android.permission.INTERNET\"></uses-permission>"

    invoke-static {v10, v12, v13}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 90
    :cond_6
    if-nez v1, :cond_7

    .line 91
    const-string v12, "PermissionsLabelValidate"

    const-string v13, "Please add in AndroidManifest.xml<uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\"></uses-permission>"

    invoke-static {v10, v12, v13}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 96
    :cond_7
    if-nez v4, :cond_8

    .line 97
    const-string v12, "PermissionsLabelValidate"

    const-string v13, "Please add in AndroidManifest.xml<uses-permission android:name=\"android.permission.READ_PHONE_STATE\"></uses-permission>"

    invoke-static {v10, v12, v13}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 102
    :cond_8
    if-nez v2, :cond_9

    .line 103
    const-string v12, "PermissionsLabelValidate"

    const-string v13, "Please add in AndroidManifest.xml<uses-permission android:name=\"android.permission.GET_TASKS\"></uses-permission>"

    invoke-static {v10, v12, v13}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 108
    :cond_9
    if-nez v5, :cond_a

    .line 109
    const-string v12, "PermissionsLabelValidate"

    const-string v13, "Please add in AndroidManifest.xml<uses-permission android:name=\"android.permission.WRITE_EXTERNAL_STORAGE\"></uses-permission>"

    invoke-static {v10, v12, v13}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 114
    :cond_a
    if-eqz v3, :cond_b

    if-eqz v1, :cond_b

    if-nez v2, :cond_d

    move v12, v10

    :goto_1
    if-nez v5, :cond_e

    :goto_2
    or-int/2addr v10, v12

    if-eqz v10, :cond_c

    .line 115
    :cond_b
    iget-object v10, p0, Lcom/taobao/statistic/module/d/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v10}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/taobao/statistic/core/q;->u(Z)V

    .line 119
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #hANS:Z
    .end local v2           #hGT:Z
    .end local v3           #hI:Z
    .end local v4           #hRPS:Z
    .end local v5           #hWES:Z
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v9           #pInfos:[Ljava/lang/String;
    :cond_c
    return-void

    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #hANS:Z
    .restart local v2       #hGT:Z
    .restart local v3       #hI:Z
    .restart local v4       #hRPS:Z
    .restart local v5       #hWES:Z
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v9       #pInfos:[Ljava/lang/String;
    :cond_d
    move v12, v11

    .line 114
    goto :goto_1

    :cond_e
    move v10, v11

    goto :goto_2
.end method

.method private b(Landroid/content/pm/PackageInfo;)V
    .locals 11
    .parameter "pi"

    .prologue
    .line 122
    if-eqz p1, :cond_5

    .line 123
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 124
    .local v5, sInfos:[Landroid/content/pm/ServiceInfo;
    if-eqz v5, :cond_5

    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, hasService:Z
    const-string v6, ""

    .line 127
    .local v6, serviceInfo:Ljava/lang/String;
    const/4 v3, 0x0

    .line 128
    .local v3, isRemote:Z
    move-object v0, v5

    .local v0, arr$:[Landroid/content/pm/ServiceInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v7, v0, v2

    .line 129
    .local v7, si:Landroid/content/pm/ServiceInfo;
    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v9, "com.taobao.statistic.Yolanda"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v9, "com.taobao.statistic.module.data.Yolanda"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 131
    :cond_0
    const/4 v1, 0x1

    .line 132
    iget-object v6, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 133
    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "utremote"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 136
    const/4 v3, 0x1

    .line 138
    :cond_1
    invoke-static {v6}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 139
    const-string v6, ""

    .line 128
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v7           #si:Landroid/content/pm/ServiceInfo;
    :cond_3
    if-eqz v1, :cond_4

    const-string v8, "com.taobao.statistic.Yolanda"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    if-nez v3, :cond_5

    .line 145
    :cond_4
    const/4 v8, 0x1

    const-string v9, "ServiceLabelValidate"

    const-string v10, "In AndroidManifest.xml update background data service configuration <serviceandroid:name=\"com.taobao.statistic.module.data.Yolanda\" android:process=\":utremote\" ></service>.Upload the data used to exit through the back-office services"

    invoke-static {v8, v9, v10}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 152
    .end local v0           #arr$:[Landroid/content/pm/ServiceInfo;
    .end local v1           #hasService:Z
    .end local v2           #i$:I
    .end local v3           #isRemote:Z
    .end local v4           #len$:I
    .end local v5           #sInfos:[Landroid/content/pm/ServiceInfo;
    .end local v6           #serviceInfo:Ljava/lang/String;
    :cond_5
    return-void
.end method


# virtual methods
.method public X(Ljava/lang/String;)V
    .locals 6
    .parameter "pageName"

    .prologue
    const/4 v5, 0x1

    .line 155
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    move-object v0, p1

    .line 157
    .local v0, oldValue:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 158
    const-string v1, "view"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "page"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "layout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    const-string v1, "Advice"

    const-string v2, "(%s)The page name should not end with view,activity,page,null or layout"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 169
    .end local v0           #oldValue:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public Y(Ljava/lang/String;)V
    .locals 10
    .parameter "controlName"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 172
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 173
    move-object v4, p1

    .line 174
    .local v4, oldValue:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 175
    const-string v5, "-"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    const-string v5, "Advice"

    const-string v6, "(%s)The control name should not end with \'-\'."

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 199
    .end local v4           #oldValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 181
    .restart local v4       #oldValue:Ljava/lang/String;
    :cond_1
    const-string v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 182
    const-string v5, "Advice"

    const-string v6, "(%s)The control name should not end with \"null\"."

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 187
    :cond_2
    invoke-static {}, Lcom/taobao/statistic/CT;->values()[Lcom/taobao/statistic/CT;

    move-result-object v0

    .local v0, arr$:[Lcom/taobao/statistic/CT;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 188
    .local v1, ct:Lcom/taobao/statistic/CT;
    invoke-virtual {v1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 189
    const-string v5, "Advice"

    const-string v6, "(%s)The control name should not include the value of the definition in CT class"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 187
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public dB()V
    .locals 6

    .prologue
    .line 34
    iget-object v4, p0, Lcom/taobao/statistic/module/d/a;->iF:Lcom/taobao/statistic/core/i;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/taobao/statistic/module/d/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v4}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 35
    iget-object v4, p0, Lcom/taobao/statistic/module/d/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v4}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v0

    .line 36
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 37
    iget-object v4, p0, Lcom/taobao/statistic/module/d/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v4}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 39
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 40
    const/4 v2, 0x0

    .line 42
    .local v2, pi:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1004

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 48
    :goto_0
    if-eqz v2, :cond_0

    .line 49
    invoke-direct {p0, v2}, Lcom/taobao/statistic/module/d/a;->a(Landroid/content/pm/PackageInfo;)V

    .line 50
    invoke-direct {p0, v2}, Lcom/taobao/statistic/module/d/a;->b(Landroid/content/pm/PackageInfo;)V

    .line 56
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    return-void

    .line 45
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #pi:Landroid/content/pm/PackageInfo;
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 46
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public dC()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/taobao/statistic/module/d/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/taobao/statistic/module/d/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x1

    const-string v1, "Advice"

    const-string v2, "Had better use Application level of Context as a parameter for setEnvironment method(Otherwise part of the check is not valid[Exp:ServiceLabel dynamic check])."

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 210
    :cond_0
    return-void
.end method
