.class final Lcom/google/zxing/client/result/SMSMMSResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SMSMMSResultParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    .line 37
    return-void
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;
    .locals 16
    .parameter "result"

    .prologue
    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v14

    .line 41
    .local v14, rawText:Ljava/lang/String;
    if-nez v14, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 45
    :cond_0
    const-string v0, "sms:"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SMS:"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    const-string v0, "mms:"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MMS:"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 47
    :cond_1
    const/4 v11, 0x4

    .line 56
    .local v11, prefixLength:I
    :goto_1
    invoke-static {v14}, Lcom/google/zxing/client/result/SMSMMSResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v9

    .line 57
    .local v9, nameValuePairs:Ljava/util/Hashtable;
    const/4 v4, 0x0

    .line 58
    .local v4, subject:Ljava/lang/String;
    const/4 v5, 0x0

    .line 59
    .local v5, body:Ljava/lang/String;
    const/4 v13, 0x0

    .line 60
    .local v13, querySyntax:Z
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    const-string v0, "subject"

    invoke-virtual {v9, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #subject:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 62
    .restart local v4       #subject:Ljava/lang/String;
    const-string v0, "body"

    invoke-virtual {v9, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #body:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 63
    .restart local v5       #body:Ljava/lang/String;
    const/4 v13, 0x1

    .line 67
    :cond_2
    const/16 v0, 0x3f

    invoke-virtual {v14, v0, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 70
    .local v12, queryStart:I
    if-ltz v12, :cond_3

    if-nez v13, :cond_8

    .line 71
    :cond_3
    invoke-virtual {v14, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 75
    .local v15, smsURIWithoutQuery:Ljava/lang/String;
    :goto_2
    const/16 v0, 0x3b

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 78
    .local v10, numberEnd:I
    if-gez v10, :cond_9

    .line 79
    move-object v2, v15

    .line 80
    .local v2, number:Ljava/lang/String;
    const/4 v3, 0x0

    .line 93
    .local v3, via:Ljava/lang/String;
    :goto_3
    if-nez v5, :cond_4

    .line 94
    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 95
    .local v7, bodyStart:I
    if-ltz v7, :cond_4

    .line 96
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 97
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 100
    .end local v7           #bodyStart:I
    :cond_4
    new-instance v0, Lcom/google/zxing/client/result/SMSParsedResult;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "sms:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/client/result/SMSParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    .end local v2           #number:Ljava/lang/String;
    .end local v3           #via:Ljava/lang/String;
    .end local v4           #subject:Ljava/lang/String;
    .end local v5           #body:Ljava/lang/String;
    .end local v9           #nameValuePairs:Ljava/util/Hashtable;
    .end local v10           #numberEnd:I
    .end local v11           #prefixLength:I
    .end local v12           #queryStart:I
    .end local v13           #querySyntax:Z
    .end local v15           #smsURIWithoutQuery:Ljava/lang/String;
    :cond_5
    const-string v0, "smsto:"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SMSTO:"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 49
    const-string v0, "mmsto:"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "MMSTO:"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 50
    :cond_6
    const/4 v11, 0x6

    .line 51
    .restart local v11       #prefixLength:I
    goto/16 :goto_1

    .line 52
    .end local v11           #prefixLength:I
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 73
    .restart local v4       #subject:Ljava/lang/String;
    .restart local v5       #body:Ljava/lang/String;
    .restart local v9       #nameValuePairs:Ljava/util/Hashtable;
    .restart local v11       #prefixLength:I
    .restart local v12       #queryStart:I
    .restart local v13       #querySyntax:Z
    :cond_8
    invoke-virtual {v14, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #smsURIWithoutQuery:Ljava/lang/String;
    goto :goto_2

    .line 82
    .restart local v10       #numberEnd:I
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {v15, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 83
    .restart local v2       #number:Ljava/lang/String;
    add-int/lit8 v0, v10, 0x1

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, maybeVia:Ljava/lang/String;
    const-string v0, "via="

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 85
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 86
    .restart local v3       #via:Ljava/lang/String;
    goto :goto_3

    .line 87
    .end local v3           #via:Ljava/lang/String;
    :cond_a
    const/4 v3, 0x0

    .restart local v3       #via:Ljava/lang/String;
    goto :goto_3
.end method
