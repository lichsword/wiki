.class public Lcom/alibaba/adi/collie/CoreApplication$SystemNotificationInfo;
.super Ljava/lang/Object;
.source "CoreApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/CoreApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemNotificationInfo"
.end annotation


# instance fields
.field private callNum:I

.field private smsNum:I

.field private weiboNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Lcom/alibaba/adi/collie/CoreApplication$SystemNotificationInfo;->callNum:I

    .line 72
    iput v0, p0, Lcom/alibaba/adi/collie/CoreApplication$SystemNotificationInfo;->smsNum:I

    .line 73
    iput v0, p0, Lcom/alibaba/adi/collie/CoreApplication$SystemNotificationInfo;->weiboNum:I

    .line 70
    return-void
.end method


# virtual methods
.method public getCallNum()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$SystemNotificationInfo;->callNum:I

    return v0
.end method

.method public getSmsNum()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$SystemNotificationInfo;->smsNum:I

    return v0
.end method

.method public getSum()I
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$SystemNotificationInfo;->callNum:I

    iget v1, p0, Lcom/alibaba/adi/collie/CoreApplication$SystemNotificationInfo;->smsNum:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/adi/collie/CoreApplication$SystemNotificationInfo;->weiboNum:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWeiboNum()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/alibaba/adi/collie/CoreApplication$SystemNotificationInfo;->weiboNum:I

    return v0
.end method

.method public setCallNum(I)V
    .locals 0
    .parameter "callNum"

    .prologue
    .line 80
    iput p1, p0, Lcom/alibaba/adi/collie/CoreApplication$SystemNotificationInfo;->callNum:I

    .line 81
    return-void
.end method

.method public setSmsNum(I)V
    .locals 0
    .parameter "smsNum"

    .prologue
    .line 88
    iput p1, p0, Lcom/alibaba/adi/collie/CoreApplication$SystemNotificationInfo;->smsNum:I

    .line 89
    return-void
.end method

.method public setWeiboNum(I)V
    .locals 0
    .parameter "weiboNum"

    .prologue
    .line 96
    iput p1, p0, Lcom/alibaba/adi/collie/CoreApplication$SystemNotificationInfo;->weiboNum:I

    .line 97
    return-void
.end method
