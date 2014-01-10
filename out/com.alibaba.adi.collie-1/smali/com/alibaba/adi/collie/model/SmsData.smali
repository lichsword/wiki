.class public Lcom/alibaba/adi/collie/model/SmsData;
.super Ljava/lang/Object;
.source "SmsData.java"


# instance fields
.field mAddress:Ljava/lang/String;

.field mBody:Ljava/lang/String;

.field mDate:Ljava/lang/String;

.field mThreadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "address"
    .parameter "date"
    .parameter "body"
    .parameter "threadId"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/SmsData;->mAddress:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/alibaba/adi/collie/model/SmsData;->mDate:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/alibaba/adi/collie/model/SmsData;->mBody:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/alibaba/adi/collie/model/SmsData;->mThreadId:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/SmsData;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/SmsData;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/SmsData;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/SmsData;->mThreadId:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "mAddress"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/SmsData;->mAddress:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "mBody"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/SmsData;->mBody:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "mDate"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/SmsData;->mDate:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .locals 0
    .parameter "mThreadId"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/SmsData;->mThreadId:Ljava/lang/String;

    .line 52
    return-void
.end method
