.class public Landroid/taobao/util/ImageUrlHelper;
.super Ljava/lang/Object;
.source "ImageUrlHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;
    }
.end annotation


# static fields
.field public static final NO_CJ:I = 0x0

.field public static final XC:I = 0x2

.field public static final XZ:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeURLToSize(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .parameter "size"
    .parameter "cj"

    .prologue
    const/4 v3, -0x1

    .line 260
    if-ne v3, p1, :cond_1

    .line 295
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 264
    .restart local p0
    :cond_1
    if-eqz p0, :cond_0

    const-string v2, "taobao"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 273
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 275
    invoke-static {p0}, Landroid/taobao/util/ImageUrlHelper;->parseImageUrl(Ljava/lang/String;)Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;

    move-result-object v1

    .line 276
    .local v1, info:Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;
    if-nez v1, :cond_4

    .line 277
    new-instance v1, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;

    .end local v1           #info:Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;
    invoke-direct {v1}, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;-><init>()V

    .line 278
    .restart local v1       #info:Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 279
    .local v0, e:I
    if-ltz v0, :cond_0

    .line 281
    const-string v2, ".jpg"

    iput-object v2, v1, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->ext:Ljava/lang/String;

    .line 282
    iput-object p0, v1, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->baseurl:Ljava/lang/String;

    .line 283
    iput p1, v1, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->width:I

    .line 284
    iput p1, v1, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->height:I

    .line 286
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 287
    const-string v2, "xz"

    iput-object v2, v1, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->cj:Ljava/lang/String;

    .line 295
    .end local v0           #e:I
    :goto_1
    invoke-static {v1}, Landroid/taobao/util/ImageUrlHelper;->fullURL(Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 288
    .restart local v0       #e:I
    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    .line 289
    const-string v2, "xc"

    iput-object v2, v1, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->cj:Ljava/lang/String;

    goto :goto_1

    .line 290
    :cond_3
    const-string v2, ""

    iput-object v2, v1, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->cj:Ljava/lang/String;

    goto :goto_1

    .line 293
    .end local v0           #e:I
    :cond_4
    iput p1, v1, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->height:I

    iput p1, v1, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->width:I

    goto :goto_1
.end method

.method public static fullURL(Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;)Ljava/lang/String;
    .locals 2
    .parameter "info"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->cj:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 309
    const-string v0, ""

    iput-object v0, p0, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->cj:Ljava/lang/String;

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->baseurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->cj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWebpPicUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "url"

    .prologue
    const/4 v5, -0x1

    .line 159
    if-nez p0, :cond_1

    .line 160
    const-string v4, "WEBP"

    const-string v5, "url is empty, sure?"

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string p0, ""

    .line 191
    .end local p0
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    .local v2, pos:I
    .local v3, pos2:I
    :cond_0
    :goto_0
    return-object p0

    .line 164
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v2           #pos:I
    .end local v3           #pos2:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 165
    const-string v4, "taobao"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 170
    const-string v4, ".webp"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 171
    .restart local v2       #pos:I
    if-ne v5, v2, :cond_2

    .line 172
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

    .line 176
    :cond_2
    const-string v4, "|"

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v3

    .line 177
    .restart local v3       #pos2:I
    if-ne v5, v3, :cond_3

    .line 178
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

    .line 186
    :cond_3
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, data:Ljava/lang/String;
    move-object p0, v0

    .line 187
    goto :goto_0

    .line 189
    .end local v0           #data:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 190
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

    .line 191
    const-string p0, ""

    goto :goto_0
.end method

.method public static hasWebpUrl(Ljava/lang/String;)Z
    .locals 4
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 137
    if-nez p0, :cond_1

    .line 138
    const-string v2, "WEBP"

    const-string v3, "url is empty, sure?"

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    :goto_0
    return v1

    .line 141
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 142
    const-string v2, ".webp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 143
    .local v0, pos:I
    const/4 v2, -0x1

    if-eq v2, v0, :cond_0

    .line 148
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static parseImageUrl(Ljava/lang/String;)Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;
    .locals 12
    .parameter "url"

    .prologue
    const/16 v11, 0x39

    const/16 v10, 0x30

    const/4 v7, 0x0

    .line 203
    new-instance v3, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;

    invoke-direct {v3}, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;-><init>()V

    .line 204
    .local v3, info:Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;
    const/4 v1, 0x0

    .line 205
    .local v1, height:I
    const/4 v6, 0x0

    .line 206
    .local v6, width:I
    const/16 v8, 0x2e

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 207
    .local v0, e:I
    if-gez v0, :cond_0

    move-object v3, v7

    .line 254
    .end local v3           #info:Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;
    :goto_0
    return-object v3

    .line 209
    .restart local v3       #info:Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->ext:Ljava/lang/String;

    .line 211
    const/16 v8, 0x78

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    .line 212
    .local v5, s:I
    if-gez v5, :cond_1

    move-object v3, v7

    .line 213
    goto :goto_0

    .line 215
    :cond_1
    add-int/lit8 v2, v5, 0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 216
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 217
    .local v4, n:C
    if-lt v4, v10, :cond_2

    if-le v4, v11, :cond_3

    .line 226
    .end local v4           #n:C
    :cond_2
    if-gtz v1, :cond_4

    move-object v3, v7

    .line 227
    goto :goto_0

    .line 222
    .restart local v4       #n:C
    :cond_3
    mul-int/lit8 v8, v1, 0xa

    add-int/2addr v8, v4

    add-int/lit8 v1, v8, -0x30

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    .end local v4           #n:C
    :cond_4
    move v0, v5

    .line 231
    const/16 v8, 0x5f

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    .line 232
    if-gez v5, :cond_5

    move-object v3, v7

    .line 233
    goto :goto_0

    .line 236
    :cond_5
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->baseurl:Ljava/lang/String;

    .line 237
    add-int/lit8 v2, v5, 0x1

    :goto_2
    if-ge v2, v0, :cond_6

    .line 238
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 239
    .restart local v4       #n:C
    if-lt v4, v10, :cond_6

    if-le v4, v11, :cond_7

    .line 248
    .end local v4           #n:C
    :cond_6
    if-gtz v6, :cond_8

    move-object v3, v7

    .line 249
    goto :goto_0

    .line 243
    .restart local v4       #n:C
    :cond_7
    mul-int/lit8 v8, v6, 0xa

    add-int/2addr v8, v4

    add-int/lit8 v6, v8, -0x30

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 251
    .end local v4           #n:C
    :cond_8
    iput v6, v3, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->width:I

    .line 252
    iput v1, v3, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->height:I

    goto :goto_0
.end method

.method public static picUrlProcess(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "url"
    .parameter "size"

    .prologue
    .line 59
    if-nez p0, :cond_1

    .line 95
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 61
    .restart local p0
    :cond_1
    const-string v5, "taobao"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    const/16 v5, 0x7c

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 66
    .local v4, sep:I
    if-lez v4, :cond_2

    .line 68
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 71
    :cond_2
    const/4 v2, 0x0

    .line 81
    .local v2, outputUrl:Ljava/lang/String;
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 85
    const-string v5, "_\\d+x\\d+\\.jpg"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 86
    .local v3, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 87
    .local v1, matcher:Ljava/util/regex/Matcher;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, append:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 89
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object p0, v2

    .line 95
    goto :goto_0

    .line 92
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static picUrlProcessXc(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "size"

    .prologue
    .line 123
    invoke-static {p0}, Landroid/taobao/util/ImageUrlHelper;->hasWebpUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {p0}, Landroid/taobao/util/ImageUrlHelper;->getWebpPicUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Landroid/taobao/util/ImageUrlHelper;->changeURLToSize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static picUrlProcessXz(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "size"

    .prologue
    .line 108
    invoke-static {p0}, Landroid/taobao/util/ImageUrlHelper;->hasWebpUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p0}, Landroid/taobao/util/ImageUrlHelper;->getWebpPicUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/taobao/util/ImageUrlHelper;->changeURLToSize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
