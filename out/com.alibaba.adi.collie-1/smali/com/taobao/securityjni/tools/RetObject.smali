.class public Lcom/taobao/securityjni/tools/RetObject;
.super Ljava/lang/Object;
.source "RetObject.java"


# instance fields
.field public errorCode:I

.field public extraData:I

.field public functionName:Ljava/lang/String;

.field public reservedData:I

.field public rightData:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p0, Lcom/taobao/securityjni/tools/RetObject;->rightData:[B

    .line 5
    iput-object v1, p0, Lcom/taobao/securityjni/tools/RetObject;->functionName:Ljava/lang/String;

    .line 6
    iput v0, p0, Lcom/taobao/securityjni/tools/RetObject;->errorCode:I

    .line 7
    iput v0, p0, Lcom/taobao/securityjni/tools/RetObject;->extraData:I

    .line 8
    iput v0, p0, Lcom/taobao/securityjni/tools/RetObject;->reservedData:I

    .line 3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11
    const-string v0, "null"

    .line 12
    .local v0, data:Ljava/lang/String;
    iget-object v1, p0, Lcom/taobao/securityjni/tools/RetObject;->rightData:[B

    if-eqz v1, :cond_0

    .line 13
    new-instance v0, Ljava/lang/String;

    .end local v0           #data:Ljava/lang/String;
    iget-object v1, p0, Lcom/taobao/securityjni/tools/RetObject;->rightData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 16
    .restart local v0       #data:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RetObject [rightData="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", functionName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/taobao/securityjni/tools/RetObject;->functionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/securityjni/tools/RetObject;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extraData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18
    iget v2, p0, Lcom/taobao/securityjni/tools/RetObject;->extraData:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reservedData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/taobao/securityjni/tools/RetObject;->reservedData:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
