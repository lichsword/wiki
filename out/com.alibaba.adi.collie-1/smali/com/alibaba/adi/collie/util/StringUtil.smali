.class public Lcom/alibaba/adi/collie/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ToDBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "input"

    .prologue
    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    const-string v2, ""

    .line 40
    :goto_0
    return-object v2

    .line 31
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 32
    .local v0, c:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 40
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 33
    :cond_1
    aget-char v2, v0, v1

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_3

    .line 34
    const/16 v2, 0x20

    aput-char v2, v0, v1

    .line 32
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 37
    :cond_3
    aget-char v2, v0, v1

    const v3, 0xff00

    if-le v2, v3, :cond_2

    aget-char v2, v0, v1

    const v3, 0xff5f

    if-ge v2, v3, :cond_2

    .line 38
    aget-char v2, v0, v1

    const v3, 0xfee0

    sub-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_2
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 4
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 11
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 17
    if-lez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 12
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
