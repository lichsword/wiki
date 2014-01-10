.class public Landroid/taobao/util/TaoPicUrlProcesser;
.super Ljava/lang/Object;
.source "TaoPicUrlProcesser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;
    }
.end annotation


# static fields
.field private static final ISTAOBAOCDNPIC:Ljava/lang/String; = "taobao"

.field private static final PicSeparator:Ljava/lang/String; = "|"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeURLToSize(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 24
    invoke-static {p0}, Landroid/taobao/util/TaoPicUrlProcesser;->hasWebpUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p0}, Landroid/taobao/util/TaoPicUrlProcesser;->getWebpPicUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/taobao/util/TaoPicUrlProcesser;->changeURLToSizeInner(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static changeURLToSizeInner(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, -0x1

    .line 34
    if-eq v3, p1, :cond_0

    if-ne p2, v3, :cond_1

    .line 60
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 38
    .restart local p0
    :cond_1
    if-eqz p0, :cond_0

    const-string v2, "taobao"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 43
    invoke-static {p0}, Landroid/taobao/util/TaoPicUrlProcesser;->parseImageUrl(Ljava/lang/String;)Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;

    move-result-object v1

    .line 44
    .local v1, info:Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;
    if-nez v1, :cond_2

    .line 46
    new-instance v1, Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;

    .end local v1           #info:Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;
    invoke-direct {v1}, Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;-><init>()V

    .line 47
    .restart local v1       #info:Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 48
    .local v0, e:I
    if-ltz v0, :cond_0

    .line 50
    const-string v2, ".jpg"

    iput-object v2, v1, Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;->ext:Ljava/lang/String;

    .line 51
    iput-object p0, v1, Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;->baseurl:Ljava/lang/String;

    .line 52
    iput p1, v1, Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;->width:I

    .line 53
    iput p2, v1, Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;->height:I

    .line 60
    .end local v0           #e:I
    :goto_1
    invoke-static {v1}, Landroid/taobao/util/TaoPicUrlProcesser;->composeImgURL(Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 57
    :cond_2
    iput p1, v1, Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;->width:I

    .line 58
    iput p2, v1, Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;->height:I

    goto :goto_1
.end method

.method private static composeImgURL(Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;)Ljava/lang/String;
    .locals 2
    .parameter "info"

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;->baseurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWebpPicUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "url"

    .prologue
    const/4 v5, -0x1

    .line 149
    if-nez p0, :cond_1

    .line 150
    const-string v4, "WEBP"

    const-string v5, "url is empty, sure?"

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string p0, ""

    .line 185
    .end local p0
    .local v2, pos:I
    .local v3, pos2:I
    :cond_0
    :goto_0
    return-object p0

    .line 154
    .end local v2           #pos:I
    .end local v3           #pos2:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 155
    const-string v4, "taobao"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 160
    const-string v4, ".webp"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 161
    .restart local v2       #pos:I
    if-ne v5, v2, :cond_2

    .line 162
    const-string v4, "WEBP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not find the webp info. url is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_2
    const-string v4, "|"

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v3

    .line 167
    .restart local v3       #pos2:I
    if-ne v5, v3, :cond_3

    .line 168
    const-string v4, "WEBP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not find the separator. url is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_3
    const/4 v4, 0x0

    const-string v5, "a.webp"

    invoke-static {v4, v5}, Lcom/taobao/tao/imagepool/utility/BitmapHelperFactory;->isSupport([BLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 173
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v2, 0x5

    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, data:Ljava/lang/String;
    move-object p0, v0

    .line 174
    goto :goto_0

    .line 175
    .end local v0           #data:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 176
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "WEBP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Url format is error. url is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string p0, ""

    goto :goto_0

    .line 181
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .restart local v0       #data:Ljava/lang/String;
    move-object p0, v0

    .line 182
    goto/16 :goto_0

    .line 183
    .end local v0           #data:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 184
    .restart local v1       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "WEBP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Webp not support. Url format is error. url is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string p0, ""

    goto/16 :goto_0
.end method

.method private static hasWebpUrl(Ljava/lang/String;)Z
    .locals 4
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 127
    if-nez p0, :cond_1

    .line 128
    const-string v2, "WEBP"

    const-string v3, "url is empty, sure?"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    :goto_0
    return v1

    .line 131
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 132
    const-string v2, ".webp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 133
    .local v0, pos:I
    const/4 v2, -0x1

    if-eq v2, v0, :cond_0

    .line 138
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static parseImageUrl(Ljava/lang/String;)Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;
    .locals 12
    .parameter "url"

    .prologue
    const/16 v11, 0x39

    const/16 v10, 0x30

    const/4 v7, 0x0

    .line 81
    new-instance v3, Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;

    invoke-direct {v3}, Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;-><init>()V

    .line 82
    .local v3, info:Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;
    const/4 v1, 0x0

    .line 83
    .local v1, height:I
    const/4 v6, 0x0

    .line 84
    .local v6, width:I
    const/16 v8, 0x2e

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 85
    .local v0, e:I
    if-gez v0, :cond_0

    move-object v3, v7

    .line 118
    .end local v3           #info:Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;
    :goto_0
    return-object v3

    .line 87
    .restart local v3       #info:Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;->ext:Ljava/lang/String;

    .line 89
    const/16 v8, 0x78

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    .line 90
    .local v5, s:I
    if-gez v5, :cond_1

    move-object v3, v7

    .line 91
    goto :goto_0

    .line 93
    :cond_1
    add-int/lit8 v2, v5, 0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 95
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 96
    .local v4, n:C
    if-lt v4, v10, :cond_2

    if-le v4, v11, :cond_3

    :cond_2
    move-object v3, v7

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    mul-int/lit8 v8, v1, 0xa

    add-int/2addr v8, v4

    add-int/lit8 v1, v8, -0x30

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    .end local v4           #n:C
    :cond_4
    move v0, v5

    .line 103
    const/16 v8, 0x5f

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    .line 104
    if-gez v5, :cond_5

    move-object v3, v7

    .line 105
    goto :goto_0

    .line 106
    :cond_5
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;->baseurl:Ljava/lang/String;

    .line 107
    add-int/lit8 v2, v5, 0x1

    :goto_2
    if-ge v2, v0, :cond_8

    .line 109
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 110
    .restart local v4       #n:C
    if-lt v4, v10, :cond_6

    if-le v4, v11, :cond_7

    :cond_6
    move-object v3, v7

    .line 111
    goto :goto_0

    .line 112
    :cond_7
    mul-int/lit8 v8, v6, 0xa

    add-int/2addr v8, v4

    add-int/lit8 v6, v8, -0x30

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 115
    .end local v4           #n:C
    :cond_8
    iput v6, v3, Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;->width:I

    .line 116
    iput v1, v3, Landroid/taobao/util/TaoPicUrlProcesser$ImageUrlInfo;->height:I

    goto :goto_0
.end method
