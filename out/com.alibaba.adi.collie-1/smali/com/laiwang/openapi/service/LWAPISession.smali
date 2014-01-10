.class public Lcom/laiwang/openapi/service/LWAPISession;
.super Ljava/lang/Object;
.source "LWAPISession.java"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppTocken:Ljava/lang/String;

.field private mIILWAPICallback:Lcom/laiwang/openapi/IILWAPICallback;

.field private mLWMessage:Lcom/laiwang/openapi/message/LWMessage;

.field private mPackageName:Ljava/lang/String;

.field private mRandomKey:I

.field private mUID:I

.field private mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/laiwang/openapi/service/LWAPISession;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/laiwang/openapi/service/LWAPISession;->mAppTocken:Ljava/lang/String;

    return-object v0
.end method

.method public getLWAPICallback()Lcom/laiwang/openapi/IILWAPICallback;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/laiwang/openapi/service/LWAPISession;->mIILWAPICallback:Lcom/laiwang/openapi/IILWAPICallback;

    return-object v0
.end method

.method public getLWMessage()Lcom/laiwang/openapi/message/LWMessage;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/laiwang/openapi/service/LWAPISession;->mLWMessage:Lcom/laiwang/openapi/message/LWMessage;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/laiwang/openapi/service/LWAPISession;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRandomKey()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/laiwang/openapi/service/LWAPISession;->mRandomKey:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/laiwang/openapi/service/LWAPISession;->mVersion:I

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .parameter "mAppName"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/laiwang/openapi/service/LWAPISession;->mAppName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setAppToken(Ljava/lang/String;)V
    .locals 0
    .parameter "appToken"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/laiwang/openapi/service/LWAPISession;->mAppTocken:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setLWAPICallback(Lcom/laiwang/openapi/IILWAPICallback;)V
    .locals 0
    .parameter "iLWAPICallback"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/laiwang/openapi/service/LWAPISession;->mIILWAPICallback:Lcom/laiwang/openapi/IILWAPICallback;

    .line 44
    return-void
.end method

.method public setLWMessage(Lcom/laiwang/openapi/message/LWMessage;)V
    .locals 0
    .parameter "lwMessage"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/laiwang/openapi/service/LWAPISession;->mLWMessage:Lcom/laiwang/openapi/message/LWMessage;

    .line 60
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/laiwang/openapi/service/LWAPISession;->mPackageName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setRandomKey(I)V
    .locals 0
    .parameter "nRandomKey"

    .prologue
    .line 47
    iput p1, p0, Lcom/laiwang/openapi/service/LWAPISession;->mRandomKey:I

    .line 48
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 36
    iput p1, p0, Lcom/laiwang/openapi/service/LWAPISession;->mUID:I

    .line 37
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "mVersion"

    .prologue
    .line 19
    iput p1, p0, Lcom/laiwang/openapi/service/LWAPISession;->mVersion:I

    .line 20
    return-void
.end method
