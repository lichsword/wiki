.class public Lcom/alibaba/adi/collie/model/CallData;
.super Ljava/lang/Object;
.source "CallData.java"


# instance fields
.field mDate:Ljava/lang/String;

.field mFrom:Ljava/lang/String;

.field mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "address"
    .parameter "date"
    .parameter "number"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/CallData;->mFrom:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/alibaba/adi/collie/model/CallData;->mDate:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/alibaba/adi/collie/model/CallData;->mNumber:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/CallData;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/CallData;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/CallData;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "mAddress"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/CallData;->mFrom:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "mDate"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/CallData;->mDate:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/CallData;->mNumber:Ljava/lang/String;

    .line 42
    return-void
.end method
