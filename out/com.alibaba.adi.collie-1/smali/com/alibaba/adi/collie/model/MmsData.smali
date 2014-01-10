.class public Lcom/alibaba/adi/collie/model/MmsData;
.super Ljava/lang/Object;
.source "MmsData.java"


# instance fields
.field mAddress:Ljava/lang/String;

.field mDate:Ljava/lang/String;

.field mParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mThreadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "address"
    .parameter "date"
    .parameter "threadId"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/MmsData;->mAddress:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/alibaba/adi/collie/model/MmsData;->mDate:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/alibaba/adi/collie/model/MmsData;->mThreadId:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/MmsData;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/MmsData;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/MmsData;->mParts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/model/MmsData;->mParts:Ljava/util/List;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/MmsData;->mParts:Ljava/util/List;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/MmsData;->mThreadId:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "mAddress"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/MmsData;->mAddress:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "mDate"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/MmsData;->mDate:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setParts(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/MmsData;->mParts:Ljava/util/List;

    .line 31
    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .locals 0
    .parameter "mThreadId"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/MmsData;->mThreadId:Ljava/lang/String;

    .line 55
    return-void
.end method
