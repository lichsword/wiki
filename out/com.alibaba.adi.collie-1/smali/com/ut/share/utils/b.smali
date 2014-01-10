.class public Lcom/ut/share/utils/b;
.super Ljava/lang/Object;
.source "ShareLinkWrapper.java"


# static fields
.field private static final pI:Ljava/util/regex/Pattern;

.field public static pJ:[C

.field private static pK:Ljava/lang/reflect/Method;

.field private static pL:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 41
    const-string v3, "[.]*(http[s]{0,1}://[\\p{Alnum}|.]+[:\\d]?[\\p{Graph}]*)[.]*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/ut/share/utils/b;->pI:Ljava/util/regex/Pattern;

    .line 160
    const/16 v3, 0x10

    new-array v3, v3, [C

    fill-array-data v3, :array_0

    sput-object v3, Lcom/ut/share/utils/b;->pJ:[C

    .line 191
    :try_start_0
    const-string v3, "com.taobao.wireless.tbShortUrl.util.ShortUrlUtil"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 192
    .local v1, clzsuu:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 194
    const-string v3, "encodeShortUrlByTimeOut"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/Long;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/Integer;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/ut/share/utils/b;->pK:Ljava/lang/reflect/Method;

    .line 196
    :cond_0
    const-string v3, "com.taobao.wireless.tbShortUrl.entity.CodeResult"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 197
    .local v0, clzcr:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 198
    const-string v3, "getItemUrl"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/ut/share/utils/b;->pL:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v0           #clzcr:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v2

    .line 201
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "[shortUrl]get encode method reflect error"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 160
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "pageKey"
    .parameter "sharePlatform"
    .parameter "shareLink"

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Lcom/taobao/statistic/TBS$Adv;->getUtsid()Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, utsid:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .local v3, retlink:Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 49
    .local v1, prepend:Ljava/lang/String;
    const/16 v7, 0x3f

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 50
    .local v2, qtIdx:I
    const/16 v7, 0x23

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 51
    .local v4, sharpIdx:I
    if-ltz v2, :cond_0

    const-string v7, "?"

    invoke-virtual {p2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 52
    const-string v1, "&"

    .line 55
    :cond_0
    if-gez v2, :cond_1

    .line 56
    const-string v1, "?"

    .line 59
    :cond_1
    invoke-static {v1, p0, p1, v6}, Lcom/ut/share/utils/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, sk:Ljava/lang/String;
    sget-object v7, Lcom/ut/share/SharePlatform;->LaiwangActivity:Lcom/ut/share/SharePlatform;

    invoke-virtual {v7}, Lcom/ut/share/SharePlatform;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&laiwang_share=activity"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    :cond_2
    if-ltz v4, :cond_3

    if-ge v2, v4, :cond_3

    .line 68
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 74
    .end local v1           #prepend:Ljava/lang/String;
    .end local v2           #qtIdx:I
    .end local v3           #retlink:Ljava/lang/StringBuilder;
    .end local v4           #sharpIdx:I
    .end local v5           #sk:Ljava/lang/String;
    .end local v6           #utsid:Ljava/lang/String;
    .end local p2
    :goto_1
    return-object p2

    .line 70
    .restart local v1       #prepend:Ljava/lang/String;
    .restart local v2       #qtIdx:I
    .restart local v3       #retlink:Ljava/lang/StringBuilder;
    .restart local v4       #sharpIdx:I
    .restart local v5       #sk:Ljava/lang/String;
    .restart local v6       #utsid:Ljava/lang/String;
    .restart local p2
    :cond_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v1           #prepend:Ljava/lang/String;
    .end local v2           #qtIdx:I
    .end local v3           #retlink:Ljava/lang/StringBuilder;
    .end local v4           #sharpIdx:I
    .end local v5           #sk:Ljava/lang/String;
    .end local v6           #utsid:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/Exception;
    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "prepend"
    .parameter "pageKey"
    .parameter "sharePlatform"
    .parameter "utsid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, sharelink:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v1, wlink:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v2, "ut_sk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static a(C)Z
    .locals 5
    .parameter "ch"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v3, v1, :cond_0

    .line 154
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 152
    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    move v1, v2

    .line 154
    goto :goto_0
.end method

.method public static ap(Ljava/lang/String;)I
    .locals 5
    .parameter "str"

    .prologue
    .line 114
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 115
    :cond_0
    const/4 v1, 0x0

    .line 124
    :cond_1
    :goto_0
    return v1

    .line 117
    :cond_2
    const/4 v1, 0x0

    .line 118
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 119
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 120
    .local v0, ch:C
    invoke-static {v0}, Lcom/ut/share/utils/b;->a(C)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x2

    .line 118
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 123
    .end local v0           #ch:C
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 124
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public static aq(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "url"

    .prologue
    .line 212
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-object p0

    .line 216
    :cond_1
    :try_start_0
    const-string v4, "[shorturl]"

    const-string v5, "run shortutl action"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 218
    .local v2, prop:Ljava/util/Properties;
    const-string v4, "url"

    invoke-virtual {v2, v4, p0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v4, "TB_WIRELESS_SHORT_URL"

    invoke-static {v4, v2}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;Ljava/util/Properties;)V

    .line 221
    sget-object v4, Lcom/ut/share/utils/b;->pK:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    .line 223
    sget-object v4, Lcom/ut/share/utils/b;->pK:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    const-wide/16 v8, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 225
    .local v3, ret:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 228
    sget-object v4, Lcom/ut/share/utils/b;->pL:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 229
    .local v1, itemUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object p0, v1

    .line 232
    goto :goto_0

    .line 234
    .end local v1           #itemUrl:Ljava/lang/String;
    .end local v3           #ret:Ljava/lang/Object;
    :cond_2
    const-string v4, "[shorturl]"

    const-string v5, "encodeShortUrlMtd is null! return input param!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    .end local v2           #prop:Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "create short url exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "str"
    .parameter "limit"

    .prologue
    .line 130
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 146
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 133
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 135
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 136
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 137
    .local v1, ch:C
    invoke-static {v1}, Lcom/ut/share/utils/b;->a(C)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x2

    .line 138
    :goto_2
    if-gt v2, p1, :cond_3

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 137
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 141
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 144
    .end local v1           #ch:C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 145
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #count:I
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .line 146
    .local v3, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "pageKey"
    .parameter "sharePlatform"
    .parameter "shareText"
    .parameter "shouldShorten"

    .prologue
    .line 91
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v5, wtext:Ljava/lang/StringBuilder;
    sget-object v6, Lcom/ut/share/utils/b;->pI:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 93
    .local v1, matcher:Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    .line 94
    .local v4, stIdx:I
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 95
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {p2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, murl:Ljava/lang/String;
    invoke-static {p0, p1, v2}, Lcom/ut/share/utils/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, shareLink:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 99
    invoke-static {v3}, Lcom/ut/share/utils/b;->aq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .line 103
    goto :goto_0

    .line 104
    .end local v2           #murl:Ljava/lang/String;
    .end local v3           #shareLink:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 107
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    .end local v4           #stIdx:I
    .end local v5           #wtext:Ljava/lang/StringBuilder;
    .end local p2
    :goto_1
    return-object p2

    .line 106
    .restart local p2
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    goto :goto_1
.end method
