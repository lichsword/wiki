.class public Lcom/alibaba/fastjson/asm/Label;
.super Ljava/lang/Object;
.source "Label.java"


# static fields
.field static final RESOLVED:I = 0x2


# instance fields
.field public info:Ljava/lang/Object;

.field inputStackTop:I

.field line:I

.field next:Lcom/alibaba/fastjson/asm/Label;

.field outputStackMax:I

.field position:I

.field private referenceCount:I

.field private srcAndRefPositions:[I

.field status:I

.field successor:Lcom/alibaba/fastjson/asm/Label;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method private addReference(II)V
    .locals 4
    .parameter "sourcePosition"
    .parameter "referencePosition"

    .prologue
    const/4 v3, 0x0

    .line 180
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    if-nez v1, :cond_0

    .line 181
    const/4 v1, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    .line 183
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 184
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x6

    new-array v0, v1, [I

    .line 185
    .local v0, a:[I
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    iput-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    .line 188
    .end local v0           #a:[I
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    iget v2, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    aput p1, v1, v2

    .line 189
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    iget v2, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    aput p2, v1, v2

    .line 190
    return-void
.end method


# virtual methods
.method put(Lcom/alibaba/fastjson/asm/MethodWriter;Lcom/alibaba/fastjson/asm/ByteVector;I)V
    .locals 1
    .parameter "owner"
    .parameter "out"
    .parameter "source"

    .prologue
    .line 162
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->status:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 163
    iget v0, p2, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-direct {p0, p3, v0}, Lcom/alibaba/fastjson/asm/Label;->addReference(II)V

    .line 164
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->position:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_0
.end method

.method resolve(Lcom/alibaba/fastjson/asm/MethodWriter;I[B)Z
    .locals 10
    .parameter "owner"
    .parameter "position"
    .parameter "data"

    .prologue
    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, needUpdate:Z
    iget v8, p0, Lcom/alibaba/fastjson/asm/Label;->status:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/alibaba/fastjson/asm/Label;->status:I

    .line 210
    iput p2, p0, Lcom/alibaba/fastjson/asm/Label;->position:I

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, i:I
    :goto_0
    iget v8, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    if-ge v0, v8, :cond_4

    .line 213
    iget-object v8, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aget v7, v8, v0

    .line 214
    .local v7, source:I
    iget-object v8, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aget v5, v8, v1

    .line 216
    .local v5, reference:I
    if-ltz v7, :cond_3

    .line 217
    sub-int v3, p2, v7

    .line 218
    .local v3, offset:I
    const/16 v8, -0x8000

    if-lt v3, v8, :cond_0

    const/16 v8, 0x7fff

    if-le v3, v8, :cond_1

    .line 225
    :cond_0
    add-int/lit8 v8, v5, -0x1

    aget-byte v8, p3, v8

    and-int/lit16 v4, v8, 0xff

    .line 226
    .local v4, opcode:I
    const/16 v8, 0xa8

    if-gt v4, v8, :cond_2

    .line 228
    add-int/lit8 v8, v5, -0x1

    add-int/lit8 v9, v4, 0x31

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 233
    :goto_1
    const/4 v2, 0x1

    .line 235
    .end local v4           #opcode:I
    :cond_1
    add-int/lit8 v6, v5, 0x1

    .end local v5           #reference:I
    .local v6, reference:I
    ushr-int/lit8 v8, v3, 0x8

    int-to-byte v8, v8

    aput-byte v8, p3, v5

    .line 236
    int-to-byte v8, v3

    aput-byte v8, p3, v6

    move v5, v6

    .end local v6           #reference:I
    .restart local v5       #reference:I
    goto :goto_0

    .line 231
    .restart local v4       #opcode:I
    :cond_2
    add-int/lit8 v8, v5, -0x1

    add-int/lit8 v9, v4, 0x14

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    goto :goto_1

    .line 238
    .end local v3           #offset:I
    .end local v4           #opcode:I
    :cond_3
    add-int v8, p2, v7

    add-int/lit8 v3, v8, 0x1

    .line 239
    .restart local v3       #offset:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #reference:I
    .restart local v6       #reference:I
    ushr-int/lit8 v8, v3, 0x18

    int-to-byte v8, v8

    aput-byte v8, p3, v5

    .line 240
    add-int/lit8 v5, v6, 0x1

    .end local v6           #reference:I
    .restart local v5       #reference:I
    ushr-int/lit8 v8, v3, 0x10

    int-to-byte v8, v8

    aput-byte v8, p3, v6

    .line 241
    add-int/lit8 v6, v5, 0x1

    .end local v5           #reference:I
    .restart local v6       #reference:I
    ushr-int/lit8 v8, v3, 0x8

    int-to-byte v8, v8

    aput-byte v8, p3, v5

    .line 242
    int-to-byte v8, v3

    aput-byte v8, p3, v6

    move v5, v6

    .end local v6           #reference:I
    .restart local v5       #reference:I
    goto :goto_0

    .line 245
    .end local v3           #offset:I
    .end local v5           #reference:I
    .end local v7           #source:I
    :cond_4
    return v2
.end method
