.class public Lcom/etao/kaka/decode/DecodeResult;
.super Ljava/lang/Object;
.source "DecodeResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xfa5728004b6425dL


# instance fields
.field public bytes:[B

.field public height:I

.field public strCode:Ljava/lang/String;

.field public subType:I

.field public type:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "subType"
    .parameter "strCode"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/etao/kaka/decode/DecodeResult;->type:I

    .line 18
    iput p2, p0, Lcom/etao/kaka/decode/DecodeResult;->subType:I

    .line 19
    iput-object p3, p0, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0
    .parameter "type"
    .parameter "subType"
    .parameter "bytes"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/etao/kaka/decode/DecodeResult;->type:I

    .line 34
    iput p2, p0, Lcom/etao/kaka/decode/DecodeResult;->subType:I

    .line 35
    iput-object p3, p0, Lcom/etao/kaka/decode/DecodeResult;->bytes:[B

    .line 36
    return-void
.end method

.method public constructor <init>(II[BIIII)V
    .locals 0
    .parameter "type"
    .parameter "subType"
    .parameter "bytes"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/etao/kaka/decode/DecodeResult;->type:I

    .line 24
    iput p2, p0, Lcom/etao/kaka/decode/DecodeResult;->subType:I

    .line 25
    iput-object p3, p0, Lcom/etao/kaka/decode/DecodeResult;->bytes:[B

    .line 26
    iput p4, p0, Lcom/etao/kaka/decode/DecodeResult;->x:I

    .line 27
    iput p5, p0, Lcom/etao/kaka/decode/DecodeResult;->y:I

    .line 28
    iput p6, p0, Lcom/etao/kaka/decode/DecodeResult;->width:I

    .line 29
    iput p7, p0, Lcom/etao/kaka/decode/DecodeResult;->height:I

    .line 30
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DecodeResult [type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/etao/kaka/decode/DecodeResult;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/etao/kaka/decode/DecodeResult;->subType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etao/kaka/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    const-string v1, ", bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etao/kaka/decode/DecodeResult;->bytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/etao/kaka/decode/DecodeResult;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/etao/kaka/decode/DecodeResult;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    iget v1, p0, Lcom/etao/kaka/decode/DecodeResult;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/etao/kaka/decode/DecodeResult;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
