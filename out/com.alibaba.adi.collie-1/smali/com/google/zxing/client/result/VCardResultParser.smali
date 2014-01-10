.class final Lcom/google/zxing/client/result/VCardResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VCardResultParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    .line 32
    return-void
.end method

.method private static formatAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "address"

    .prologue
    .line 141
    if-nez p0, :cond_0

    .line 142
    const/4 v4, 0x0

    .line 154
    :goto_0
    return-object v4

    .line 144
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 145
    .local v2, length:I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 146
    .local v3, newAddress:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 148
    .local v0, c:C
    const/16 v4, 0x3b

    if-ne v0, v4, :cond_2

    .line 149
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private static formatNames([Ljava/lang/String;)V
    .locals 8
    .parameter "names"

    .prologue
    .line 164
    if-eqz p0, :cond_0

    .line 165
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, p0

    if-lt v3, v7, :cond_1

    .line 186
    .end local v3           #i:I
    :cond_0
    return-void

    .line 166
    .restart local v3       #i:I
    :cond_1
    aget-object v4, p0, v3

    .line 167
    .local v4, name:Ljava/lang/String;
    const/4 v7, 0x5

    new-array v1, v7, [Ljava/lang/String;

    .line 168
    .local v1, components:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 170
    .local v6, start:I
    const/4 v0, 0x0

    .line 171
    .local v0, componentIndex:I
    :goto_1
    const/16 v7, 0x3b

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .local v2, end:I
    if-gtz v2, :cond_2

    .line 176
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v0

    .line 177
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v7, 0x64

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 178
    .local v5, newName:Ljava/lang/StringBuffer;
    const/4 v7, 0x3

    invoke-static {v1, v7, v5}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 179
    const/4 v7, 0x1

    invoke-static {v1, v7, v5}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 180
    const/4 v7, 0x2

    invoke-static {v1, v7, v5}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 181
    const/4 v7, 0x0

    invoke-static {v1, v7, v5}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 182
    const/4 v7, 0x4

    invoke-static {v1, v7, v5}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 183
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p0, v3

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    .end local v5           #newName:Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    .line 174
    add-int/lit8 v6, v2, 0x1

    goto :goto_1
.end method

.method private static isLikeVCardDate(Ljava/lang/String;)Z
    .locals 7
    .parameter "value"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 122
    if-nez p0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    invoke-static {p0, v6}, Lcom/google/zxing/client/result/VCardResultParser;->isStringOfDigits(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 133
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    .line 134
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    .line 135
    invoke-static {p0, v1, v5}, Lcom/google/zxing/client/result/VCardResultParser;->isSubstringOfDigits(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    const/4 v2, 0x5

    invoke-static {p0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->isSubstringOfDigits(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    invoke-static {p0, v6, v4}, Lcom/google/zxing/client/result/VCardResultParser;->isSubstringOfDigits(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 131
    goto :goto_0
.end method

.method static matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "prefix"
    .parameter "rawText"
    .parameter "trim"

    .prologue
    .line 117
    invoke-static {p0, p1, p2}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, values:[Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private static matchVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 9
    .parameter "prefix"
    .parameter "rawText"
    .parameter "trim"

    .prologue
    const/16 v8, 0x3a

    const/16 v7, 0xa

    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, matches:Ljava/util/Vector;
    const/4 v1, 0x0

    .line 71
    .local v1, i:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 72
    .local v3, max:I
    :cond_0
    :goto_0
    if-lt v1, v3, :cond_3

    .line 110
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 111
    :cond_2
    const/4 v5, 0x0

    .line 113
    :goto_1
    return-object v5

    .line 73
    :cond_3
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 74
    if-ltz v1, :cond_1

    .line 77
    if-lez v1, :cond_4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_4

    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 80
    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_0

    .line 86
    :cond_5
    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_6

    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    move v4, v1

    .line 91
    .local v4, start:I
    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 92
    if-gez v1, :cond_7

    .line 94
    move v1, v3

    .line 95
    goto :goto_0

    .line 87
    .end local v4           #start:I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 95
    .restart local v4       #start:I
    :cond_7
    if-le v1, v4, :cond_a

    .line 97
    if-nez v2, :cond_8

    .line 98
    new-instance v2, Ljava/util/Vector;

    .end local v2           #matches:Ljava/util/Vector;
    const/4 v5, 0x3

    invoke-direct {v2, v5}, Ljava/util/Vector;-><init>(I)V

    .line 100
    .restart local v2       #matches:Ljava/util/Vector;
    :cond_8
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, element:Ljava/lang/String;
    if-eqz p2, :cond_9

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_9
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 106
    goto :goto_0

    .line 107
    .end local v0           #element:Ljava/lang/String;
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v4           #start:I
    :cond_b
    invoke-static {v2}, Lcom/google/zxing/client/result/VCardResultParser;->toStringArray(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private static maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 1
    .parameter "components"
    .parameter "i"
    .parameter "newName"

    .prologue
    .line 189
    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    .line 190
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 191
    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    :cond_0
    return-void
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 15
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    const/4 v14, 0x1

    .line 38
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v12

    .line 39
    .local v12, rawText:Ljava/lang/String;
    if-eqz v12, :cond_0

    const-string v0, "BEGIN:VCARD"

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 64
    :goto_0
    return-object v0

    .line 42
    :cond_1
    const-string v0, "FN"

    invoke-static {v0, v12, v14}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, names:[Ljava/lang/String;
    if-nez v1, :cond_2

    .line 45
    const-string v0, "N"

    invoke-static {v0, v12, v14}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/google/zxing/client/result/VCardResultParser;->formatNames([Ljava/lang/String;)V

    .line 48
    :cond_2
    const-string v0, "TEL"

    invoke-static {v0, v12, v14}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, phoneNumbers:[Ljava/lang/String;
    const-string v0, "EMAIL"

    invoke-static {v0, v12, v14}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, emails:[Ljava/lang/String;
    const-string v0, "NOTE"

    const/4 v13, 0x0

    invoke-static {v0, v12, v13}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, note:Ljava/lang/String;
    const-string v0, "ADR"

    invoke-static {v0, v12, v14}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, addresses:[Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 53
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    array-length v0, v6

    if-lt v11, v0, :cond_5

    .line 57
    .end local v11           #i:I
    :cond_3
    const-string v0, "ORG"

    invoke-static {v0, v12, v14}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, org:Ljava/lang/String;
    const-string v0, "BDAY"

    invoke-static {v0, v12, v14}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, birthday:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/zxing/client/result/VCardResultParser;->isLikeVCardDate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60
    const/4 v8, 0x0

    .line 62
    :cond_4
    const-string v0, "TITLE"

    invoke-static {v0, v12, v14}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, title:Ljava/lang/String;
    const-string v0, "URL"

    invoke-static {v0, v12, v14}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 64
    .local v10, url:Ljava/lang/String;
    new-instance v0, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-direct/range {v0 .. v10}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v7           #org:Ljava/lang/String;
    .end local v8           #birthday:Ljava/lang/String;
    .end local v9           #title:Ljava/lang/String;
    .end local v10           #url:Ljava/lang/String;
    .restart local v11       #i:I
    :cond_5
    aget-object v0, v6, v11

    invoke-static {v0}, Lcom/google/zxing/client/result/VCardResultParser;->formatAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v11

    .line 53
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method
