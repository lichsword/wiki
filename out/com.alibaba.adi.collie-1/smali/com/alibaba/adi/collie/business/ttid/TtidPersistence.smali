.class public Lcom/alibaba/adi/collie/business/ttid/TtidPersistence;
.super Ljava/lang/Object;
.source "TtidPersistence.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkTtidChanged(Lcom/alibaba/adi/collie/business/ttid/OnTtidChangedListener;)V
    .locals 4
    .parameter "onTtidChangedCallback"

    .prologue
    .line 21
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const/high16 v3, 0x7f0a

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/CoreApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, currentTtid:Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/adi/collie/business/ttid/TtidPersistence;->getTtid()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, oldTtid:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 24
    if-eqz p0, :cond_0

    .line 25
    invoke-interface {p0, v1, v0}, Lcom/alibaba/adi/collie/business/ttid/OnTtidChangedListener;->onTtidChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    invoke-static {v0}, Lcom/alibaba/adi/collie/business/ttid/TtidPersistence;->setTtid(Ljava/lang/String;)V

    .line 29
    :cond_1
    return-void
.end method

.method public static getTtid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    const-string v0, "ttid"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setTtid(Ljava/lang/String;)V
    .locals 1
    .parameter "ttid"

    .prologue
    .line 13
    const-string v0, "ttid"

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method
