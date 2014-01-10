.class public Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;
.super Ljava/lang/Object;
.source "AdiPersistence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJokeVisited()Z
    .locals 2

    .prologue
    .line 32
    const-string v0, "adiserver_joke_visited"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMainId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    const-string v0, "adiserver_mainid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNewsRegistered()Z
    .locals 2

    .prologue
    .line 24
    const-string v0, "adiserver_news_registered"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getPasswd()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    const-string v0, "adiserver_passwd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStatus()Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;
    .locals 4

    .prologue
    .line 69
    const-string v2, "adiserver_user_status"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, status:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 72
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 79
    :goto_0
    return-object v2

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->UNREGISTER:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    invoke-static {v2}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->setStatus(Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;)V

    .line 76
    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->UNREGISTER:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    goto :goto_0

    .line 79
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->UNREGISTER:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    goto :goto_0
.end method

.method public static saveAdiAccount(Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;)V
    .locals 1
    .parameter "accountResult"
    .parameter "status"

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->getMainId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->setMainId(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->getPasswd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->setPasswd(Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->setStatus(Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;)V

    .line 20
    invoke-static {}, Lcom/alibaba/adi/collie/util/UninstallObserver;->writeParamFile()V

    .line 21
    return-void
.end method

.method public static setJokeVisited(Z)V
    .locals 1
    .parameter "visited"

    .prologue
    .line 36
    const-string v0, "adiserver_joke_visited"

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Z)V

    .line 37
    return-void
.end method

.method public static setMainId(Ljava/lang/String;)V
    .locals 1
    .parameter "mainId"

    .prologue
    .line 44
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    const-string v0, "adiserver_mainid"

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public static setNewsRegistered(Z)V
    .locals 1
    .parameter "status"

    .prologue
    .line 28
    const-string v0, "adiserver_news_registered"

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Z)V

    .line 29
    return-void
.end method

.method public static setPasswd(Ljava/lang/String;)V
    .locals 1
    .parameter "passwd"

    .prologue
    .line 54
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    const-string v0, "adiserver_passwd"

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method public static setStatus(Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 60
    const-string v0, "adiserver_user_status"

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->UNREGISTER:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {v2}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->setMainId(Ljava/lang/String;)V

    .line 64
    invoke-static {v2}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->setPasswd(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method
