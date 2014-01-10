.class public Lcom/alibaba/adi/collie/broadcast/OnCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "OnCallStateListener.java"


# instance fields
.field private mIsActive:Z

.field private mManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 15
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/CoreApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/alibaba/adi/collie/broadcast/OnCallStateListener;->mManager:Landroid/telephony/TelephonyManager;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/broadcast/OnCallStateListener;->mIsActive:Z

    .line 12
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/adi/collie/broadcast/OnCallStateListener;->mManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alibaba/adi/collie/broadcast/OnCallStateListener;->mManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 45
    :cond_0
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/broadcast/OnCallStateListener;->mIsActive:Z

    return v0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v1, 0x1

    .line 23
    if-ne p1, v1, :cond_1

    .line 25
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/broadcast/OnCallStateListener;->mIsActive:Z

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    if-nez p1, :cond_2

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/broadcast/OnCallStateListener;->mIsActive:Z

    goto :goto_0

    .line 29
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 31
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/broadcast/OnCallStateListener;->mIsActive:Z

    goto :goto_0
.end method

.method public open()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/adi/collie/broadcast/OnCallStateListener;->mManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/alibaba/adi/collie/broadcast/OnCallStateListener;->mManager:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 39
    :cond_0
    return-void
.end method
