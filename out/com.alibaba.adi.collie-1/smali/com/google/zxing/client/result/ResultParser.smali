.class public abstract Lcom/google/zxing/client/result/ResultParser;
.super Ljava/lang/Object;
.source "ResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendKeyValue(Ljava/lang/String;IILjava/util/Hashtable;)V
    .locals 4
    .parameter "uri"
    .parameter "paramStart"
    .parameter "paramEnd"
    .parameter "result"

    .prologue
    .line 246
    const/16 v3, 0x3d

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 247
    .local v1, separator:I
    if-ltz v1, :cond_0

    .line 249
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, key:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/zxing/client/result/ResultParser;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-virtual {p3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static findFirstEscape([C)I
    .locals 4
    .parameter "escapedArray"

    .prologue
    .line 167
    array-length v2, p0

    .line 168
    .local v2, max:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 174
    const/4 v1, -0x1

    .end local v1           #i:I
    :cond_0
    return v1

    .line 169
    .restart local v1       #i:I
    :cond_1
    aget-char v0, p0, v1

    .line 170
    .local v0, c:C
    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    const/16 v3, 0x25

    if-eq v0, v3, :cond_0

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected static isStringOfDigits(Ljava/lang/String;I)Z
    .locals 5
    .parameter "value"
    .parameter "length"

    .prologue
    const/4 v3, 0x0

    .line 195
    if-nez p0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v3

    .line 198
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 199
    .local v2, stringLength:I
    if-ne p1, v2, :cond_0

    .line 202
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, p1, :cond_2

    .line 208
    const/4 v3, 0x1

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 204
    .local v0, c:C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_0

    const/16 v4, 0x39

    if-gt v0, v4, :cond_0

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected static isSubstringOfDigits(Ljava/lang/String;II)Z
    .locals 6
    .parameter "value"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 212
    if-nez p0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v4

    .line 215
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 216
    .local v3, stringLength:I
    add-int v2, p1, p2

    .line 217
    .local v2, max:I
    if-lt v3, v2, :cond_0

    .line 220
    move v1, p1

    .local v1, i:I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 226
    const/4 v4, 0x1

    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 222
    .local v0, c:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_0

    const/16 v5, 0x39

    if-gt v0, v5, :cond_0

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 8
    .parameter "prefix"
    .parameter "rawText"
    .parameter "endChar"
    .parameter "trim"

    .prologue
    .line 258
    const/4 v3, 0x0

    .line 259
    .local v3, matches:Ljava/util/Vector;
    const/4 v2, 0x0

    .line 260
    .local v2, i:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 261
    .local v4, max:I
    :cond_0
    if-lt v2, v4, :cond_3

    .line 293
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 294
    :cond_2
    const/4 v6, 0x0

    .line 296
    :goto_0
    return-object v6

    .line 262
    :cond_3
    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 263
    if-ltz v2, :cond_1

    .line 266
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    .line 267
    move v5, v2

    .line 268
    .local v5, start:I
    const/4 v0, 0x0

    .line 269
    .local v0, done:Z
    :goto_1
    if-nez v0, :cond_0

    .line 270
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 271
    if-gez v2, :cond_4

    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 274
    const/4 v0, 0x1

    .line 275
    goto :goto_1

    :cond_4
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_5

    .line 277
    add-int/lit8 v2, v2, 0x1

    .line 278
    goto :goto_1

    .line 280
    :cond_5
    if-nez v3, :cond_6

    .line 281
    new-instance v3, Ljava/util/Vector;

    .end local v3           #matches:Ljava/util/Vector;
    const/4 v6, 0x3

    invoke-direct {v3, v6}, Ljava/util/Vector;-><init>(I)V

    .line 283
    .restart local v3       #matches:Ljava/util/Vector;
    :cond_6
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/zxing/client/result/ResultParser;->unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, element:Ljava/lang/String;
    if-eqz p3, :cond_7

    .line 285
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 287
    :cond_7
    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 288
    add-int/lit8 v2, v2, 0x1

    .line 289
    const/4 v0, 0x1

    goto :goto_1

    .line 296
    .end local v0           #done:Z
    .end local v1           #element:Ljava/lang/String;
    .end local v5           #start:I
    :cond_8
    invoke-static {v3}, Lcom/google/zxing/client/result/ResultParser;->toStringArray(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method static matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;
    .locals 2
    .parameter "prefix"
    .parameter "rawText"
    .parameter "endChar"
    .parameter "trim"

    .prologue
    .line 300
    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, matches:[Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method protected static maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter "value"
    .parameter "result"

    .prologue
    .line 78
    if-eqz p0, :cond_0

    .line 79
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :cond_0
    return-void
.end method

.method protected static maybeAppend([Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "value"
    .parameter "result"

    .prologue
    .line 85
    if-eqz p0, :cond_0

    .line 86
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_1

    .line 91
    .end local v0           #i:I
    :cond_0
    return-void

    .line 87
    .restart local v0       #i:I
    :cond_1
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static maybeWrap(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 94
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    goto :goto_0
.end method

.method private static parseHexDigit(C)I
    .locals 1
    .parameter "c"

    .prologue
    .line 178
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    .line 179
    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 180
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    .line 191
    :goto_0
    return v0

    .line 182
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    .line 183
    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 184
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 186
    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    .line 187
    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    .line 188
    add-int/lit8 v0, p0, -0x30

    goto :goto_0

    .line 191
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static parseNameValuePairs(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 4
    .parameter "uri"

    .prologue
    .line 230
    const/16 v3, 0x3f

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 231
    .local v1, paramStart:I
    if-gez v1, :cond_0

    .line 232
    const/4 v2, 0x0

    .line 242
    :goto_0
    return-object v2

    .line 234
    :cond_0
    new-instance v2, Ljava/util/Hashtable;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(I)V

    .line 235
    .local v2, result:Ljava/util/Hashtable;
    add-int/lit8 v1, v1, 0x1

    .line 237
    :goto_1
    const/16 v3, 0x26

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, paramEnd:I
    if-gez v0, :cond_1

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p0, v1, v3, v2}, Lcom/google/zxing/client/result/ResultParser;->appendKeyValue(Ljava/lang/String;IILjava/util/Hashtable;)V

    goto :goto_0

    .line 238
    :cond_1
    invoke-static {p0, v1, v0, v2}, Lcom/google/zxing/client/result/ResultParser;->appendKeyValue(Ljava/lang/String;IILjava/util/Hashtable;)V

    .line 239
    add-int/lit8 v1, v0, 0x1

    goto :goto_1
.end method

.method public static parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4
    .parameter "theResult"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;

    move-result-object v0

    .local v0, result:Lcom/google/zxing/client/result/ParsedResult;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 74
    :goto_0
    return-object v1

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {p0}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v0

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {p0}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v1, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-static {p0}, Lcom/google/zxing/client/result/VCardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v1, v0

    .line 51
    goto :goto_0

    .line 52
    :cond_4
    invoke-static {p0}, Lcom/google/zxing/client/result/BizcardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v1, v0

    .line 53
    goto :goto_0

    .line 54
    :cond_5
    invoke-static {p0}, Lcom/google/zxing/client/result/VEventResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v1, v0

    .line 55
    goto :goto_0

    .line 56
    :cond_6
    invoke-static {p0}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object v1, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_7
    invoke-static {p0}, Lcom/google/zxing/client/result/TelResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/TelParsedResult;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object v1, v0

    .line 59
    goto :goto_0

    .line 60
    :cond_8
    invoke-static {p0}, Lcom/google/zxing/client/result/SMSMMSResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object v1, v0

    .line 61
    goto :goto_0

    .line 62
    :cond_9
    invoke-static {p0}, Lcom/google/zxing/client/result/GeoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;

    move-result-object v0

    if-eqz v0, :cond_a

    move-object v1, v0

    .line 63
    goto :goto_0

    .line 64
    :cond_a
    invoke-static {p0}, Lcom/google/zxing/client/result/URLTOResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;

    move-result-object v0

    if-eqz v0, :cond_b

    move-object v1, v0

    .line 65
    goto :goto_0

    .line 66
    :cond_b
    invoke-static {p0}, Lcom/google/zxing/client/result/URIResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;

    move-result-object v0

    if-eqz v0, :cond_c

    move-object v1, v0

    .line 67
    goto :goto_0

    .line 68
    :cond_c
    invoke-static {p0}, Lcom/google/zxing/client/result/ISBNResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ISBNParsedResult;

    move-result-object v0

    if-eqz v0, :cond_d

    move-object v1, v0

    .line 70
    goto :goto_0

    .line 71
    :cond_d
    invoke-static {p0}, Lcom/google/zxing/client/result/ProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ProductParsedResult;

    move-result-object v0

    if-eqz v0, :cond_e

    move-object v1, v0

    .line 72
    goto :goto_0

    .line 74
    :cond_e
    new-instance v1, Lcom/google/zxing/client/result/TextParsedResult;

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/client/result/TextParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static toStringArray(Ljava/util/Vector;)[Ljava/lang/String;
    .locals 4
    .parameter "strings"

    .prologue
    .line 305
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 306
    .local v2, size:I
    new-array v1, v2, [Ljava/lang/String;

    .line 307
    .local v1, result:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 310
    return-object v1

    .line 308
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v0

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "escaped"

    .prologue
    const/16 v8, 0x5c

    .line 98
    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 100
    .local v0, backslash:I
    if-ltz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 102
    .local v3, max:I
    new-instance v5, Ljava/lang/StringBuffer;

    add-int/lit8 v6, v3, -0x1

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 103
    .local v5, unescaped:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 104
    const/4 v4, 0x0

    .line 105
    .local v4, nextIsEscaped:Z
    move v2, v0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 114
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 117
    .end local v0           #backslash:I
    .end local v2           #i:I
    .end local v3           #max:I
    .end local v4           #nextIsEscaped:Z
    .end local v5           #unescaped:Ljava/lang/StringBuffer;
    .end local p0
    :cond_0
    return-object p0

    .line 106
    .restart local v0       #backslash:I
    .restart local v2       #i:I
    .restart local v3       #max:I
    .restart local v4       #nextIsEscaped:Z
    .restart local v5       #unescaped:Ljava/lang/StringBuffer;
    .restart local p0
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 107
    .local v1, c:C
    if-nez v4, :cond_2

    if-eq v1, v8, :cond_3

    .line 108
    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 109
    const/4 v4, 0x0

    .line 105
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private static urlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "escaped"

    .prologue
    const/16 v9, 0x25

    .line 123
    if-nez p0, :cond_1

    .line 124
    const/4 p0, 0x0

    .line 163
    .end local p0
    .local v1, escapedArray:[C
    .local v2, first:I
    :cond_0
    :goto_0
    return-object p0

    .line 126
    .end local v1           #escapedArray:[C
    .end local v2           #first:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 128
    .restart local v1       #escapedArray:[C
    invoke-static {v1}, Lcom/google/zxing/client/result/ResultParser;->findFirstEscape([C)I

    move-result v2

    .line 129
    .restart local v2       #first:I
    if-ltz v2, :cond_0

    .line 133
    array-length v5, v1

    .line 135
    .local v5, max:I
    new-instance v7, Ljava/lang/StringBuffer;

    add-int/lit8 v8, v5, -0x2

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 137
    .local v7, unescaped:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 139
    move v4, v2

    .local v4, i:I
    :goto_1
    if-lt v4, v5, :cond_2

    .line 163
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 140
    :cond_2
    aget-char v0, v1, v4

    .line 141
    .local v0, c:C
    const/16 v8, 0x2b

    if-ne v0, v8, :cond_3

    .line 143
    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 139
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 144
    :cond_3
    if-ne v0, v9, :cond_7

    .line 146
    add-int/lit8 v8, v5, -0x2

    if-lt v4, v8, :cond_4

    .line 147
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 149
    :cond_4
    add-int/lit8 v4, v4, 0x1

    aget-char v8, v1, v4

    invoke-static {v8}, Lcom/google/zxing/client/result/ResultParser;->parseHexDigit(C)I

    move-result v3

    .line 150
    .local v3, firstDigitValue:I
    add-int/lit8 v4, v4, 0x1

    aget-char v8, v1, v4

    invoke-static {v8}, Lcom/google/zxing/client/result/ResultParser;->parseHexDigit(C)I

    move-result v6

    .line 151
    .local v6, secondDigitValue:I
    if-ltz v3, :cond_5

    if-gez v6, :cond_6

    .line 153
    :cond_5
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    add-int/lit8 v8, v4, -0x1

    aget-char v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 155
    aget-char v8, v1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 157
    :cond_6
    shl-int/lit8 v8, v3, 0x4

    add-int/2addr v8, v6

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 160
    .end local v3           #firstDigitValue:I
    .end local v6           #secondDigitValue:I
    :cond_7
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
