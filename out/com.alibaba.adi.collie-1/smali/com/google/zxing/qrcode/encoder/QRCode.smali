.class public final Lcom/google/zxing/qrcode/encoder/QRCode;
.super Ljava/lang/Object;
.source "QRCode.java"


# static fields
.field public static final NUM_MASK_PATTERNS:I = 0x8


# instance fields
.field private ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private maskPattern:I

.field private matrix:Lcom/google/zxing/common/ByteMatrix;

.field private matrixWidth:I

.field private mode:Lcom/google/zxing/qrcode/decoder/Mode;

.field private numDataBytes:I

.field private numECBytes:I

.field private numRSBlocks:I

.field private numTotalBytes:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 44
    iput-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 45
    iput v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:I

    .line 46
    iput v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrixWidth:I

    .line 47
    iput v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    .line 48
    iput v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numTotalBytes:I

    .line 49
    iput v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numDataBytes:I

    .line 50
    iput v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numECBytes:I

    .line 51
    iput v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numRSBlocks:I

    .line 52
    iput-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/common/ByteMatrix;

    .line 53
    return-void
.end method

.method public static isValidMaskPattern(I)Z
    .locals 1
    .parameter "maskPattern"

    .prologue
    .line 217
    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public at(II)I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/common/ByteMatrix;

    invoke-virtual {v1, p1, p2}, Lcom/google/zxing/common/ByteMatrix;->get(II)B

    move-result v0

    .line 111
    .local v0, value:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 113
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad value"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_0
    return v0
.end method

.method public getECLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method

.method public getMaskPattern()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    return v0
.end method

.method public getMatrix()Lcom/google/zxing/common/ByteMatrix;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/common/ByteMatrix;

    return-object v0
.end method

.method public getMatrixWidth()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrixWidth:I

    return v0
.end method

.method public getMode()Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v0
.end method

.method public getNumDataBytes()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numDataBytes:I

    return v0
.end method

.method public getNumECBytes()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numECBytes:I

    return v0
.end method

.method public getNumRSBlocks()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numRSBlocks:I

    return v0
.end method

.method public getNumTotalBytes()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numTotalBytes:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:I

    return v0
.end method

.method public isValid()Z
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 123
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-eqz v0, :cond_0

    .line 125
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:I

    if-eq v0, v1, :cond_0

    .line 126
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrixWidth:I

    if-eq v0, v1, :cond_0

    .line 127
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    if-eq v0, v1, :cond_0

    .line 128
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numTotalBytes:I

    if-eq v0, v1, :cond_0

    .line 129
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numDataBytes:I

    if-eq v0, v1, :cond_0

    .line 130
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numECBytes:I

    if-eq v0, v1, :cond_0

    .line 131
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numRSBlocks:I

    if-eq v0, v1, :cond_0

    .line 133
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numTotalBytes:I

    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numDataBytes:I

    iget v2, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numECBytes:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/common/ByteMatrix;

    if-eqz v0, :cond_0

    .line 137
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrixWidth:I

    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/common/ByteMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/ByteMatrix;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/common/ByteMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/ByteMatrix;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/common/ByteMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/ByteMatrix;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 121
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 180
    return-void
.end method

.method public setMaskPattern(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 191
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    .line 192
    return-void
.end method

.method public setMatrix(Lcom/google/zxing/common/ByteMatrix;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/common/ByteMatrix;

    .line 213
    return-void
.end method

.method public setMatrixWidth(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 187
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrixWidth:I

    .line 188
    return-void
.end method

.method public setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 176
    return-void
.end method

.method public setNumDataBytes(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 199
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numDataBytes:I

    .line 200
    return-void
.end method

.method public setNumECBytes(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 203
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numECBytes:I

    .line 204
    return-void
.end method

.method public setNumRSBlocks(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 207
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numRSBlocks:I

    .line 208
    return-void
.end method

.method public setNumTotalBytes(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 195
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numTotalBytes:I

    .line 196
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 183
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:I

    .line 184
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 145
    .local v0, result:Ljava/lang/StringBuffer;
    const-string v1, "<<\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    const-string v1, " mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 148
    const-string v1, "\n ecLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 150
    const-string v1, "\n version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 152
    const-string v1, "\n matrixWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrixWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 154
    const-string v1, "\n maskPattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 156
    const-string v1, "\n numTotalBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numTotalBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 158
    const-string v1, "\n numDataBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numDataBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 160
    const-string v1, "\n numECBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numECBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 162
    const-string v1, "\n numRSBlocks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numRSBlocks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 164
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/common/ByteMatrix;

    if-nez v1, :cond_0

    .line 165
    const-string v1, "\n matrix: null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :goto_0
    const-string v1, ">>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 167
    :cond_0
    const-string v1, "\n matrix:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/common/ByteMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/ByteMatrix;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
