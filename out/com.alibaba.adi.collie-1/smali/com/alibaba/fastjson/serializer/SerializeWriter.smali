.class public final Lcom/alibaba/fastjson/serializer/SerializeWriter;
.super Ljava/io/Writer;
.source "SerializeWriter.java"


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected buf:[C

.field protected count:I

.field private features:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 52
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 54
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 56
    .local v0, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<[C>;"
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 58
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-nez v1, :cond_1

    .line 62
    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 64
    :cond_1
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "initialSize"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 95
    if-gtz p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 99
    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 8
    .parameter "features"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 70
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 72
    .local v5, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<[C>;"
    if-eqz v5, :cond_0

    .line 73
    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [C

    iput-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 74
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 77
    :cond_0
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-nez v6, :cond_1

    .line 78
    const/16 v6, 0x400

    new-array v6, v6, [C

    iput-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 81
    :cond_1
    const/4 v2, 0x0

    .line 82
    .local v2, featuresValue:I
    move-object v0, p1

    .local v0, arr$:[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 83
    .local v1, feature:Lcom/alibaba/fastjson/serializer/SerializerFeature;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v6

    or-int/2addr v2, v6

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    .end local v1           #feature:Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_2
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 86
    return-void
.end method

.method static final isSpecial(CI)Z
    .locals 4
    .parameter "ch"
    .parameter "features"

    .prologue
    const/16 v3, 0x5c

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1222
    const/16 v2, 0x20

    if-ne p0, v2, :cond_1

    .line 1239
    :cond_0
    :goto_0
    return v0

    .line 1226
    :cond_1
    const/16 v2, 0x2f

    if-ne p0, v2, :cond_2

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1227
    goto :goto_0

    .line 1230
    :cond_2
    const/16 v2, 0x23

    if-le p0, v2, :cond_3

    if-ne p0, v3, :cond_0

    .line 1234
    :cond_3
    const/16 v2, 0x8

    if-eq p0, v2, :cond_4

    const/16 v2, 0xa

    if-eq p0, v2, :cond_4

    const/16 v2, 0xd

    if-eq p0, v2, :cond_4

    const/16 v2, 0xc

    if-eq p0, v2, :cond_4

    if-eq p0, v3, :cond_4

    const/16 v2, 0x22

    if-eq p0, v2, :cond_4

    const/16 v2, 0x9

    if-ne p0, v2, :cond_0

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 1236
    goto :goto_0
.end method

.method private writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;Z)V
    .locals 24
    .parameter "seperator"
    .parameter "name"
    .parameter "value"
    .parameter "checkSpecial"

    .prologue
    .line 1115
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    .line 1118
    .local v12, nameLen:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1120
    .local v14, newcount:I
    if-nez p3, :cond_1

    .line 1121
    const/16 v17, 0x4

    .line 1122
    .local v17, valueLen:I
    add-int/lit8 v19, v12, 0x8

    add-int v14, v14, v19

    .line 1128
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v14, v0, :cond_0

    .line 1129
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1132
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v20, v0

    aput-char p1, v19, v20

    .line 1134
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, 0x2

    .line 1135
    .local v13, nameStart:I
    add-int v11, v13, v12

    .line 1137
    .local v11, nameEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x22

    aput-char v21, v19, v20

    .line 1138
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v12, v2, v13}, Ljava/lang/String;->getChars(II[CI)V

    .line 1140
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    const/16 v20, 0x22

    aput-char v20, v19, v11

    .line 1144
    add-int/lit8 v7, v11, 0x1

    .line 1145
    .local v7, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7           #index:I
    .local v8, index:I
    const/16 v20, 0x3a

    aput-char v20, v19, v7

    .line 1147
    if-nez p3, :cond_2

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8           #index:I
    .restart local v7       #index:I
    const/16 v20, 0x6e

    aput-char v20, v19, v8

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7           #index:I
    .restart local v8       #index:I
    const/16 v20, 0x75

    aput-char v20, v19, v7

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8           #index:I
    .restart local v7       #index:I
    const/16 v20, 0x6c

    aput-char v20, v19, v8

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    add-int/lit8 v8, v7, 0x1

    .end local v7           #index:I
    .restart local v8       #index:I
    const/16 v20, 0x6c

    aput-char v20, v19, v7

    move v7, v8

    .line 1215
    .end local v8           #index:I
    .restart local v7       #index:I
    :goto_1
    return-void

    .line 1124
    .end local v7           #index:I
    .end local v11           #nameEnd:I
    .end local v13           #nameStart:I
    .end local v17           #valueLen:I
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v17

    .line 1125
    .restart local v17       #valueLen:I
    add-int v19, v12, v17

    add-int/lit8 v19, v19, 0x6

    add-int v14, v14, v19

    goto/16 :goto_0

    .line 1155
    .restart local v8       #index:I
    .restart local v11       #nameEnd:I
    .restart local v13       #nameStart:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8           #index:I
    .restart local v7       #index:I
    const/16 v20, 0x22

    aput-char v20, v19, v8

    .line 1157
    move/from16 v18, v7

    .line 1158
    .local v18, valueStart:I
    add-int v16, v18, v17

    .line 1160
    .local v16, valueEnd:I
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v17

    move-object/from16 v3, v20

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1162
    if-eqz p4, :cond_8

    sget-object v19, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCheckSpecialChar:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 1163
    const/4 v15, 0x0

    .line 1164
    .local v15, specialCount:I
    const/4 v10, -0x1

    .line 1165
    .local v10, lastSpecialIndex:I
    const/4 v9, 0x0

    .line 1167
    .local v9, lastSpecial:C
    move/from16 v6, v18

    .local v6, i:I
    :goto_2
    move/from16 v0, v16

    if-ge v6, v0, :cond_5

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    aget-char v5, v19, v6

    .line 1170
    .local v5, ch:C
    const/16 v19, 0x5d

    move/from16 v0, v19

    if-lt v5, v0, :cond_4

    .line 1167
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1174
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isSpecial(CI)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1175
    add-int/lit8 v15, v15, 0x1

    .line 1176
    move v10, v6

    .line 1177
    move v9, v5

    goto :goto_3

    .line 1181
    .end local v5           #ch:C
    :cond_5
    if-lez v15, :cond_7

    .line 1182
    add-int/2addr v14, v15

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v14, v0, :cond_6

    .line 1184
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1186
    :cond_6
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1189
    :cond_7
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_9

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    add-int/lit8 v20, v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v10, 0x2

    sub-int v23, v16, v10

    add-int/lit8 v23, v23, -0x1

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    const/16 v20, 0x5c

    aput-char v20, v19, v10

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    add-int/lit8 v10, v10, 0x1

    sget-object v20, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v20, v20, v9

    aput-char v20, v19, v10

    .line 1214
    .end local v6           #i:I
    .end local v9           #lastSpecial:C
    .end local v10           #lastSpecialIndex:I
    .end local v15           #specialCount:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    const/16 v21, 0x22

    aput-char v21, v19, v20

    goto/16 :goto_1

    .line 1193
    .restart local v6       #i:I
    .restart local v9       #lastSpecial:C
    .restart local v10       #lastSpecialIndex:I
    .restart local v15       #specialCount:I
    :cond_9
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v15, v0, :cond_8

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    add-int/lit8 v20, v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v10, 0x2

    sub-int v23, v16, v10

    add-int/lit8 v23, v23, -0x1

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    const/16 v20, 0x5c

    aput-char v20, v19, v10

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    add-int/lit8 v10, v10, 0x1

    sget-object v20, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v20, v20, v9

    aput-char v20, v19, v10

    .line 1197
    add-int/lit8 v16, v16, 0x1

    .line 1198
    add-int/lit8 v6, v10, -0x2

    :goto_4
    move/from16 v0, v18

    if-lt v6, v0, :cond_8

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    aget-char v5, v19, v6

    .line 1201
    .restart local v5       #ch:C
    const/16 v19, 0x8

    move/from16 v0, v19

    if-eq v5, v0, :cond_b

    const/16 v19, 0xa

    move/from16 v0, v19

    if-eq v5, v0, :cond_b

    const/16 v19, 0xd

    move/from16 v0, v19

    if-eq v5, v0, :cond_b

    const/16 v19, 0xc

    move/from16 v0, v19

    if-eq v5, v0, :cond_b

    const/16 v19, 0x5c

    move/from16 v0, v19

    if-eq v5, v0, :cond_b

    const/16 v19, 0x22

    move/from16 v0, v19

    if-eq v5, v0, :cond_b

    const/16 v19, 0x9

    move/from16 v0, v19

    if-ne v5, v0, :cond_a

    sget-object v19, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v19

    if-nez v19, :cond_b

    :cond_a
    const/16 v19, 0x2f

    move/from16 v0, v19

    if-ne v5, v0, :cond_c

    sget-object v19, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1205
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    add-int/lit8 v22, v6, 0x2

    sub-int v23, v16, v6

    add-int/lit8 v23, v23, -0x1

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    const/16 v20, 0x5c

    aput-char v20, v19, v6

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    add-int/lit8 v20, v6, 0x1

    sget-object v21, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v21, v21, v5

    aput-char v21, v19, v20

    .line 1208
    add-int/lit8 v16, v16, 0x1

    .line 1198
    :cond_c
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_4
.end method

.method private writeKeyWithDoubleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 13
    .parameter "text"

    .prologue
    .line 1430
    sget-object v6, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    .line 1432
    .local v6, specicalFlags_doubleQuotes:[Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1433
    .local v4, len:I
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v8, v4

    add-int/lit8 v5, v8, 0x1

    .line 1434
    .local v5, newcount:I
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v8, v8

    if-le v5, v8, :cond_0

    .line 1435
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1438
    :cond_0
    iget v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1439
    .local v7, start:I
    add-int v1, v7, v4

    .line 1441
    .local v1, end:I
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v8, v4, v9, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1442
    iput v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1444
    const/4 v2, 0x0

    .line 1446
    .local v2, hasSpecial:Z
    move v3, v7

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 1447
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v8, v3

    .line 1448
    .local v0, ch:C
    array-length v8, v6

    if-ge v0, v8, :cond_2

    aget-boolean v8, v6, v0

    if-eqz v8, :cond_2

    .line 1449
    if-nez v2, :cond_3

    .line 1450
    add-int/lit8 v5, v5, 0x3

    .line 1451
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v8, v8

    if-le v5, v8, :cond_1

    .line 1452
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1454
    :cond_1
    iput v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1456
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v3, 0x1

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v3, 0x3

    sub-int v12, v1, v3

    add-int/lit8 v12, v12, -0x1

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1457
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1458
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v9, 0x22

    aput-char v9, v8, v7

    .line 1459
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v9, 0x5c

    aput-char v9, v8, v3

    .line 1460
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v9, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v9, v9, v0

    aput-char v9, v8, v3

    .line 1461
    add-int/lit8 v1, v1, 0x2

    .line 1462
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v9, -0x2

    const/16 v10, 0x22

    aput-char v10, v8, v9

    .line 1464
    const/4 v2, 0x1

    .line 1446
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1466
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 1467
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v8, v8

    if-le v5, v8, :cond_4

    .line 1468
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1470
    :cond_4
    iput v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1472
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v3, 0x1

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v3, 0x2

    sub-int v12, v1, v3

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1473
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v9, 0x5c

    aput-char v9, v8, v3

    .line 1474
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v9, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v9, v9, v0

    aput-char v9, v8, v3

    .line 1475
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1480
    .end local v0           #ch:C
    :cond_5
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v9, -0x1

    const/16 v10, 0x3a

    aput-char v10, v8, v9

    .line 1481
    return-void
.end method

.method private writeKeyWithSingleQuote(Ljava/lang/String;)V
    .locals 13
    .parameter "text"

    .prologue
    const/16 v12, 0x27

    .line 1391
    sget-object v5, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    .line 1393
    .local v5, specicalFlags_singleQuotes:[Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1394
    .local v3, len:I
    iget v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v7, v3

    add-int/lit8 v4, v7, 0x3

    .line 1395
    .local v4, newcount:I
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v4, v7, :cond_0

    .line 1396
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1399
    :cond_0
    iget v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v7, 0x1

    .line 1400
    .local v6, start:I
    add-int v1, v6, v3

    .line 1402
    .local v1, end:I
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v12, v7, v8

    .line 1403
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v7, v3, v8, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 1404
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1406
    move v2, v6

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 1407
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v7, v2

    .line 1408
    .local v0, ch:C
    array-length v7, v5

    if-ge v0, v7, :cond_1

    aget-boolean v7, v5, v0

    if-nez v7, :cond_3

    :cond_1
    const/16 v7, 0x9

    if-ne v0, v7, :cond_2

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    const/16 v7, 0x2f

    if-ne v0, v7, :cond_5

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1412
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 1413
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v4, v7, :cond_4

    .line 1414
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1416
    :cond_4
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1418
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v2, 0x1

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x2

    sub-int v11, v1, v2

    add-int/lit8 v11, v11, -0x1

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1419
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v8, 0x5c

    aput-char v8, v7, v2

    .line 1420
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v8, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v8, v8, v0

    aput-char v8, v7, v2

    .line 1421
    add-int/lit8 v1, v1, 0x1

    .line 1406
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1425
    .end local v0           #ch:C
    :cond_6
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v8, -0x2

    aput-char v12, v7, v8

    .line 1426
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v8, -0x1

    const/16 v9, 0x3a

    aput-char v9, v7, v8

    .line 1427
    return-void
.end method

.method private writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 13
    .parameter "text"

    .prologue
    .line 1484
    sget-object v6, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_singleQuotes:[Z

    .line 1486
    .local v6, specicalFlags_singleQuotes:[Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1487
    .local v4, len:I
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v8, v4

    add-int/lit8 v5, v8, 0x1

    .line 1488
    .local v5, newcount:I
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v8, v8

    if-le v5, v8, :cond_0

    .line 1489
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1492
    :cond_0
    iget v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1493
    .local v7, start:I
    add-int v1, v7, v4

    .line 1495
    .local v1, end:I
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v8, v4, v9, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1496
    iput v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1498
    const/4 v2, 0x0

    .line 1500
    .local v2, hasSpecial:Z
    move v3, v7

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 1501
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v8, v3

    .line 1502
    .local v0, ch:C
    array-length v8, v6

    if-ge v0, v8, :cond_2

    aget-boolean v8, v6, v0

    if-eqz v8, :cond_2

    .line 1503
    if-nez v2, :cond_3

    .line 1504
    add-int/lit8 v5, v5, 0x3

    .line 1505
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v8, v8

    if-le v5, v8, :cond_1

    .line 1506
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1508
    :cond_1
    iput v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1510
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v3, 0x1

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v3, 0x3

    sub-int v12, v1, v3

    add-int/lit8 v12, v12, -0x1

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1511
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1512
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v9, 0x27

    aput-char v9, v8, v7

    .line 1513
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v9, 0x5c

    aput-char v9, v8, v3

    .line 1514
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v9, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v9, v9, v0

    aput-char v9, v8, v3

    .line 1515
    add-int/lit8 v1, v1, 0x2

    .line 1516
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v9, -0x2

    const/16 v10, 0x27

    aput-char v10, v8, v9

    .line 1518
    const/4 v2, 0x1

    .line 1500
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1520
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 1521
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v8, v8

    if-le v5, v8, :cond_4

    .line 1522
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1524
    :cond_4
    iput v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1526
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v3, 0x1

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v3, 0x2

    sub-int v12, v1, v3

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1527
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v9, 0x5c

    aput-char v9, v8, v3

    .line 1528
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v9, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v9, v9, v0

    aput-char v9, v8, v3

    .line 1529
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1534
    .end local v0           #ch:C
    :cond_5
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v5, -0x1

    const/16 v10, 0x3a

    aput-char v10, v8, v9

    .line 1535
    return-void
.end method

.method private writeStringWithDoubleQuote(Ljava/lang/String;C)V
    .locals 1
    .parameter "text"
    .parameter "seperator"

    .prologue
    .line 633
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    .line 634
    return-void
.end method

.method private writeStringWithDoubleQuote(Ljava/lang/String;CZ)V
    .locals 14
    .parameter "text"
    .parameter "seperator"
    .parameter "checkSpecial"

    .prologue
    .line 641
    if-nez p1, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 818
    :goto_0
    return-void

    .line 646
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 647
    .local v5, len:I
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v9, v5

    add-int/lit8 v6, v9, 0x2

    .line 648
    .local v6, newcount:I
    if-eqz p2, :cond_1

    .line 649
    add-int/lit8 v6, v6, 0x1

    .line 652
    :cond_1
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_2

    .line 653
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 656
    :cond_2
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v9, 0x1

    .line 657
    .local v8, start:I
    add-int v1, v8, v5

    .line 659
    .local v1, end:I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x22

    aput-char v11, v9, v10

    .line 660
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v9, v5, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 662
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 664
    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 665
    const/4 v4, -0x1

    .line 667
    .local v4, lastSpecialIndex:I
    move v2, v8

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_9

    .line 668
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v9, v2

    .line 670
    .local v0, ch:C
    const/16 v9, 0x22

    if-eq v0, v9, :cond_3

    const/16 v9, 0x2f

    if-eq v0, v9, :cond_3

    const/16 v9, 0x5c

    if-ne v0, v9, :cond_5

    .line 671
    :cond_3
    move v4, v2

    .line 672
    add-int/lit8 v6, v6, 0x1

    .line 667
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 676
    :cond_5
    const/16 v9, 0x8

    if-eq v0, v9, :cond_6

    const/16 v9, 0xc

    if-eq v0, v9, :cond_6

    const/16 v9, 0xa

    if-eq v0, v9, :cond_6

    const/16 v9, 0xd

    if-eq v0, v9, :cond_6

    const/16 v9, 0x9

    if-ne v0, v9, :cond_7

    .line 677
    :cond_6
    move v4, v2

    .line 678
    add-int/lit8 v6, v6, 0x1

    .line 679
    goto :goto_2

    .line 682
    :cond_7
    const/16 v9, 0x20

    if-ge v0, v9, :cond_8

    .line 683
    move v4, v2

    .line 684
    add-int/lit8 v6, v6, 0x5

    .line 685
    goto :goto_2

    .line 688
    :cond_8
    const/16 v9, 0x7f

    if-lt v0, v9, :cond_4

    .line 689
    move v4, v2

    .line 690
    add-int/lit8 v6, v6, 0x5

    .line 691
    goto :goto_2

    .line 695
    .end local v0           #ch:C
    :cond_9
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_a

    .line 696
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 698
    :cond_a
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 700
    move v2, v4

    :goto_3
    if-lt v2, v8, :cond_11

    .line 701
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v9, v2

    .line 703
    .restart local v0       #ch:C
    const/16 v9, 0x8

    if-eq v0, v9, :cond_b

    const/16 v9, 0xc

    if-eq v0, v9, :cond_b

    const/16 v9, 0xa

    if-eq v0, v9, :cond_b

    const/16 v9, 0xd

    if-eq v0, v9, :cond_b

    const/16 v9, 0x9

    if-ne v0, v9, :cond_d

    .line 704
    :cond_b
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v2, 0x2

    sub-int v13, v1, v2

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 705
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v2

    .line 706
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    sget-object v11, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v11, v11, v0

    aput-char v11, v9, v10

    .line 707
    add-int/lit8 v1, v1, 0x1

    .line 700
    :cond_c
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 711
    :cond_d
    const/16 v9, 0x22

    if-eq v0, v9, :cond_e

    const/16 v9, 0x2f

    if-eq v0, v9, :cond_e

    const/16 v9, 0x5c

    if-ne v0, v9, :cond_f

    .line 712
    :cond_e
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v2, 0x2

    sub-int v13, v1, v2

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 713
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v2

    .line 714
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    aput-char v0, v9, v10

    .line 715
    add-int/lit8 v1, v1, 0x1

    .line 716
    goto :goto_4

    .line 719
    :cond_f
    const/16 v9, 0x20

    if-ge v0, v9, :cond_10

    .line 720
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v2, 0x6

    sub-int v13, v1, v2

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 721
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v2

    .line 722
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    const/16 v11, 0x75

    aput-char v11, v9, v10

    .line 723
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x2

    const/16 v11, 0x30

    aput-char v11, v9, v10

    .line 724
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x3

    const/16 v11, 0x30

    aput-char v11, v9, v10

    .line 725
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x4

    sget-object v11, Lcom/alibaba/fastjson/parser/CharTypes;->ASCII_CHARS:[C

    mul-int/lit8 v12, v0, 0x2

    aget-char v11, v11, v12

    aput-char v11, v9, v10

    .line 726
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x5

    sget-object v11, Lcom/alibaba/fastjson/parser/CharTypes;->ASCII_CHARS:[C

    mul-int/lit8 v12, v0, 0x2

    add-int/lit8 v12, v12, 0x1

    aget-char v11, v11, v12

    aput-char v11, v9, v10

    .line 727
    add-int/lit8 v1, v1, 0x5

    .line 728
    goto :goto_4

    .line 731
    :cond_10
    const/16 v9, 0x7f

    if-lt v0, v9, :cond_c

    .line 732
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v2, 0x6

    sub-int v13, v1, v2

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 733
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v2

    .line 734
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    const/16 v11, 0x75

    aput-char v11, v9, v10

    .line 735
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x2

    sget-object v11, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    ushr-int/lit8 v12, v0, 0xc

    and-int/lit8 v12, v12, 0xf

    aget-char v11, v11, v12

    aput-char v11, v9, v10

    .line 736
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x3

    sget-object v11, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    ushr-int/lit8 v12, v0, 0x8

    and-int/lit8 v12, v12, 0xf

    aget-char v11, v11, v12

    aput-char v11, v9, v10

    .line 737
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x4

    sget-object v11, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    ushr-int/lit8 v12, v0, 0x4

    and-int/lit8 v12, v12, 0xf

    aget-char v11, v11, v12

    aput-char v11, v9, v10

    .line 738
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x5

    sget-object v11, Lcom/alibaba/fastjson/parser/CharTypes;->digits:[C

    and-int/lit8 v12, v0, 0xf

    aget-char v11, v11, v12

    aput-char v11, v9, v10

    .line 739
    add-int/lit8 v1, v1, 0x5

    goto/16 :goto_4

    .line 743
    .end local v0           #ch:C
    :cond_11
    if-eqz p2, :cond_12

    .line 744
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v10, -0x2

    const/16 v11, 0x22

    aput-char v11, v9, v10

    .line 745
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v10, -0x1

    aput-char p2, v9, v10

    goto/16 :goto_0

    .line 747
    :cond_12
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v10, -0x1

    const/16 v11, 0x22

    aput-char v11, v9, v10

    goto/16 :goto_0

    .line 753
    .end local v2           #i:I
    .end local v4           #lastSpecialIndex:I
    :cond_13
    const/4 v7, 0x0

    .line 754
    .local v7, specialCount:I
    const/4 v4, -0x1

    .line 755
    .restart local v4       #lastSpecialIndex:I
    const/4 v3, 0x0

    .line 756
    .local v3, lastSpecial:C
    if-eqz p3, :cond_1a

    .line 757
    move v2, v8

    .restart local v2       #i:I
    :goto_5
    if-ge v2, v1, :cond_1a

    .line 758
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v9, v2

    .line 759
    .restart local v0       #ch:C
    const/16 v9, 0x5d

    if-lt v0, v9, :cond_15

    .line 757
    :cond_14
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 763
    :cond_15
    const/16 v9, 0x20

    if-eq v0, v9, :cond_14

    .line 767
    const/16 v9, 0x30

    if-lt v0, v9, :cond_16

    const/16 v9, 0x5c

    if-ne v0, v9, :cond_14

    .line 771
    :cond_16
    sget-object v9, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    array-length v9, v9

    if-ge v0, v9, :cond_17

    sget-object v9, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    aget-boolean v9, v9, v0

    if-nez v9, :cond_19

    :cond_17
    const/16 v9, 0x9

    if-ne v0, v9, :cond_18

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-nez v9, :cond_19

    :cond_18
    const/16 v9, 0x2f

    if-ne v0, v9, :cond_14

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 775
    :cond_19
    add-int/lit8 v7, v7, 0x1

    .line 776
    move v4, v2

    .line 777
    move v3, v0

    goto :goto_6

    .line 782
    .end local v0           #ch:C
    .end local v2           #i:I
    :cond_1a
    add-int/2addr v6, v7

    .line 783
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_1b

    .line 784
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 786
    :cond_1b
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 788
    const/4 v9, 0x1

    if-ne v7, v9, :cond_1d

    .line 789
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v13, v1, v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 790
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v4

    .line 791
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v10, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v10, v10, v3

    aput-char v10, v9, v4

    .line 812
    :cond_1c
    if-eqz p2, :cond_22

    .line 813
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v10, -0x2

    const/16 v11, 0x22

    aput-char v11, v9, v10

    .line 814
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v10, -0x1

    aput-char p2, v9, v10

    goto/16 :goto_0

    .line 792
    :cond_1d
    const/4 v9, 0x1

    if-le v7, v9, :cond_1c

    .line 793
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v13, v1, v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 794
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v4

    .line 795
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v10, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v10, v10, v3

    aput-char v10, v9, v4

    .line 796
    add-int/lit8 v1, v1, 0x1

    .line 797
    add-int/lit8 v2, v4, -0x2

    .restart local v2       #i:I
    :goto_7
    if-lt v2, v8, :cond_1c

    .line 798
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v9, v2

    .line 800
    .restart local v0       #ch:C
    sget-object v9, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    array-length v9, v9

    if-ge v0, v9, :cond_1e

    sget-object v9, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    aget-boolean v9, v9, v0

    if-nez v9, :cond_20

    :cond_1e
    const/16 v9, 0x9

    if-ne v0, v9, :cond_1f

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-nez v9, :cond_20

    :cond_1f
    const/16 v9, 0x2f

    if-ne v0, v9, :cond_21

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 804
    :cond_20
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v2, 0x2

    sub-int v13, v1, v2

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 805
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v2

    .line 806
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    sget-object v11, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v11, v11, v0

    aput-char v11, v9, v10

    .line 807
    add-int/lit8 v1, v1, 0x1

    .line 797
    :cond_21
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 816
    .end local v0           #ch:C
    .end local v2           #i:I
    :cond_22
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v10, -0x1

    const/16 v11, 0x22

    aput-char v11, v9, v10

    goto/16 :goto_0
.end method

.method private writeStringWithSingleQuote(Ljava/lang/String;)V
    .locals 14
    .parameter "text"

    .prologue
    .line 1294
    if-nez p1, :cond_1

    .line 1295
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v9, 0x4

    .line 1296
    .local v6, newcount:I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_0

    .line 1297
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1299
    :cond_0
    const-string v9, "null"

    const/4 v10, 0x0

    const/4 v11, 0x4

    iget-object v12, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v13, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v9, v10, v11, v12, v13}, Ljava/lang/String;->getChars(II[CI)V

    .line 1300
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1363
    :goto_0
    return-void

    .line 1304
    .end local v6           #newcount:I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1305
    .local v5, len:I
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v9, v5

    add-int/lit8 v6, v9, 0x2

    .line 1306
    .restart local v6       #newcount:I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_2

    .line 1307
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1310
    :cond_2
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v9, 0x1

    .line 1311
    .local v8, start:I
    add-int v1, v8, v5

    .line 1313
    .local v1, end:I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 1314
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v9, v5, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1315
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1317
    const/4 v7, 0x0

    .line 1318
    .local v7, specialCount:I
    const/4 v4, -0x1

    .line 1319
    .local v4, lastSpecialIndex:I
    const/4 v3, 0x0

    .line 1320
    .local v3, lastSpecial:C
    move v2, v8

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 1321
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v9, v2

    .line 1322
    .local v0, ch:C
    const/16 v9, 0x8

    if-eq v0, v9, :cond_4

    const/16 v9, 0xa

    if-eq v0, v9, :cond_4

    const/16 v9, 0xd

    if-eq v0, v9, :cond_4

    const/16 v9, 0xc

    if-eq v0, v9, :cond_4

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_4

    const/16 v9, 0x27

    if-eq v0, v9, :cond_4

    const/16 v9, 0x9

    if-ne v0, v9, :cond_3

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    const/16 v9, 0x2f

    if-ne v0, v9, :cond_5

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1326
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 1327
    move v4, v2

    .line 1328
    move v3, v0

    .line 1320
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1332
    .end local v0           #ch:C
    :cond_6
    add-int/2addr v6, v7

    .line 1333
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_7

    .line 1334
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1336
    :cond_7
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1338
    const/4 v9, 0x1

    if-ne v7, v9, :cond_9

    .line 1339
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v13, v1, v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1340
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v4

    .line 1341
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v10, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v10, v10, v3

    aput-char v10, v9, v4

    .line 1362
    :cond_8
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v10, -0x1

    const/16 v11, 0x27

    aput-char v11, v9, v10

    goto/16 :goto_0

    .line 1342
    :cond_9
    const/4 v9, 0x1

    if-le v7, v9, :cond_8

    .line 1343
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v13, v1, v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1344
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v4

    .line 1345
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v10, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v10, v10, v3

    aput-char v10, v9, v4

    .line 1346
    add-int/lit8 v1, v1, 0x1

    .line 1347
    add-int/lit8 v2, v4, -0x2

    :goto_2
    if-lt v2, v8, :cond_8

    .line 1348
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v9, v2

    .line 1350
    .restart local v0       #ch:C
    const/16 v9, 0x8

    if-eq v0, v9, :cond_b

    const/16 v9, 0xa

    if-eq v0, v9, :cond_b

    const/16 v9, 0xd

    if-eq v0, v9, :cond_b

    const/16 v9, 0xc

    if-eq v0, v9, :cond_b

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_b

    const/16 v9, 0x27

    if-eq v0, v9, :cond_b

    const/16 v9, 0x9

    if-ne v0, v9, :cond_a

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-nez v9, :cond_b

    :cond_a
    const/16 v9, 0x2f

    if-ne v0, v9, :cond_c

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1354
    :cond_b
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v2, 0x2

    sub-int v13, v1, v2

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1355
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v2

    .line 1356
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    sget-object v11, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v11, v11, v0

    aput-char v11, v9, v10

    .line 1357
    add-int/lit8 v1, v1, 0x1

    .line 1347
    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method


# virtual methods
.method public append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 0
    .parameter "c"

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 231
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3
    .parameter "csq"

    .prologue
    .line 205
    if-nez p1, :cond_0

    const-string v0, "null"

    .line 206
    .local v0, s:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 207
    return-object p0

    .line 205
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 211
    if-nez p1, :cond_0

    const-string p1, "null"

    .end local p1
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, s:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 213
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    .line 293
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 296
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 297
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 2
    .parameter "feature"
    .parameter "state"

    .prologue
    .line 102
    if-eqz p2, :cond_0

    .line 103
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0
.end method

.method public expandCapacity(I)V
    .locals 5
    .parameter "minimumCapacity"

    .prologue
    const/4 v4, 0x0

    .line 158
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, 0x1

    .line 160
    .local v0, newCapacity:I
    if-ge v0, p1, :cond_0

    .line 161
    move v0, p1

    .line 163
    :cond_0
    new-array v1, v0, [C

    .line 164
    .local v1, newValue:[C
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 166
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 1
    .parameter "feature"

    .prologue
    .line 110
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 239
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return v0
.end method

.method public toBytes(Ljava/lang/String;)[B
    .locals 5
    .parameter "charsetName"

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 254
    const-string p1, "UTF-8"

    .line 257
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 258
    .local v0, cs:Ljava/nio/charset/Charset;
    new-instance v1, Lcom/alibaba/fastjson/serializer/SerialWriterStringEncoder;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/SerialWriterStringEncoder;-><init>(Ljava/nio/charset/Charset;)V

    .line 260
    .local v1, encoder:Lcom/alibaba/fastjson/serializer/SerialWriterStringEncoder;
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/SerialWriterStringEncoder;->encode([CII)[B

    move-result-object v2

    return-object v2
.end method

.method public toCharArray()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 247
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    new-array v0, v1, [C

    .line 248
    .local v0, newValue:[C
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 278
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 126
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v1, 0x1

    .line 127
    .local v0, newcount:I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v1, v2

    .line 131
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 132
    return-void
.end method

.method public write(I)V
    .locals 4
    .parameter "c"

    .prologue
    .line 117
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v1, 0x1

    .line 118
    .local v0, newcount:I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 122
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 123
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 5
    .parameter "text"

    .prologue
    .line 352
    if-nez p1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 364
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 358
    .local v0, length:I
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v1, v2, v0

    .line 359
    .local v1, newcount:I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 360
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 362
    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 363
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4
    .parameter "str"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 176
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v0, v1, p3

    .line 177
    .local v0, newcount:I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 178
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 180
    :cond_0
    add-int v1, p2, p3

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 181
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 182
    return-void
.end method

.method public write([CII)V
    .locals 3
    .parameter "c"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 142
    if-ltz p2, :cond_0

    array-length v1, p1

    if-gt p2, v1, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_0

    add-int v1, p2, p3

    if-gez v1, :cond_1

    .line 143
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 144
    :cond_1
    if-nez p3, :cond_2

    .line 155
    :goto_0
    return-void

    .line 148
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v0, v1, p3

    .line 149
    .local v0, newcount:I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_3

    .line 150
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0
.end method

.method public writeBooleanArray([Z)V
    .locals 12
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x65

    .line 300
    array-length v8, p1

    new-array v5, v8, [I

    .line 301
    .local v5, sizeArray:[I
    const/4 v6, 0x2

    .line 302
    .local v6, totalSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, p1

    if-ge v2, v8, :cond_2

    .line 303
    if-eqz v2, :cond_0

    .line 304
    add-int/lit8 v6, v6, 0x1

    .line 306
    :cond_0
    aget-boolean v7, p1, v2

    .line 308
    .local v7, val:Z
    if-eqz v7, :cond_1

    .line 309
    const/4 v4, 0x4

    .line 313
    .local v4, size:I
    :goto_1
    aput v4, v5, v2

    .line 314
    add-int/2addr v6, v4

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    .end local v4           #size:I
    :cond_1
    const/4 v4, 0x5

    .restart local v4       #size:I
    goto :goto_1

    .line 317
    .end local v4           #size:I
    .end local v7           #val:Z
    :cond_2
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v3, v8, v6

    .line 318
    .local v3, newcount:I
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v8, v8

    if-le v3, v8, :cond_3

    .line 319
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 322
    :cond_3
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v10, 0x5b

    aput-char v10, v8, v9

    .line 324
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v8, 0x1

    .line 325
    .local v0, currentSize:I
    const/4 v2, 0x0

    :goto_2
    array-length v8, p1

    if-ge v2, v8, :cond_6

    .line 326
    if-eqz v2, :cond_4

    .line 327
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0           #currentSize:I
    .local v1, currentSize:I
    const/16 v9, 0x2c

    aput-char v9, v8, v0

    move v0, v1

    .line 330
    .end local v1           #currentSize:I
    .restart local v0       #currentSize:I
    :cond_4
    aget-boolean v7, p1, v2

    .line 331
    .restart local v7       #val:Z
    if-eqz v7, :cond_5

    .line 334
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0           #currentSize:I
    .restart local v1       #currentSize:I
    const/16 v9, 0x74

    aput-char v9, v8, v0

    .line 335
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v1, 0x1

    .end local v1           #currentSize:I
    .restart local v0       #currentSize:I
    const/16 v9, 0x72

    aput-char v9, v8, v1

    .line 336
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0           #currentSize:I
    .restart local v1       #currentSize:I
    const/16 v9, 0x75

    aput-char v9, v8, v0

    .line 337
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v1, 0x1

    .end local v1           #currentSize:I
    .restart local v0       #currentSize:I
    aput-char v11, v8, v1

    .line 325
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 339
    :cond_5
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0           #currentSize:I
    .restart local v1       #currentSize:I
    const/16 v9, 0x66

    aput-char v9, v8, v0

    .line 340
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v1, 0x1

    .end local v1           #currentSize:I
    .restart local v0       #currentSize:I
    const/16 v9, 0x61

    aput-char v9, v8, v1

    .line 341
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0           #currentSize:I
    .restart local v1       #currentSize:I
    const/16 v9, 0x6c

    aput-char v9, v8, v0

    .line 342
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v1, 0x1

    .end local v1           #currentSize:I
    .restart local v0       #currentSize:I
    const/16 v9, 0x73

    aput-char v9, v8, v1

    .line 343
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0           #currentSize:I
    .restart local v1       #currentSize:I
    aput-char v11, v8, v0

    move v0, v1

    .end local v1           #currentSize:I
    .restart local v0       #currentSize:I
    goto :goto_3

    .line 346
    .end local v7           #val:Z
    :cond_6
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v9, 0x5d

    aput-char v9, v8, v0

    .line 348
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 349
    return-void
.end method

.method public writeByteArray([B)V
    .locals 17
    .parameter "bytes"

    .prologue
    .line 422
    move-object/from16 v0, p1

    array-length v2, v0

    .line 423
    .local v2, bytesLen:I
    if-nez v2, :cond_0

    .line 424
    const-string v14, "\"\""

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 466
    :goto_0
    return-void

    .line 428
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    .line 430
    .local v1, CA:[C
    div-int/lit8 v14, v2, 0x3

    mul-int/lit8 v6, v14, 0x3

    .line 431
    .local v6, eLen:I
    add-int/lit8 v14, v2, -0x1

    div-int/lit8 v14, v14, 0x3

    add-int/lit8 v14, v14, 0x1

    shl-int/lit8 v3, v14, 0x2

    .line 433
    .local v3, charsLen:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 434
    .local v10, offset:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v14, v3

    add-int/lit8 v9, v14, 0x2

    .line 435
    .local v9, newcount:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v14, v14

    if-le v9, v14, :cond_1

    .line 436
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 438
    :cond_1
    move-object/from16 v0, p0

    iput v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 439
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v10, 0x1

    .end local v10           #offset:I
    .local v11, offset:I
    const/16 v15, 0x22

    aput-char v15, v14, v10

    .line 442
    const/4 v12, 0x0

    .local v12, s:I
    move v4, v11

    .local v4, d:I
    move v5, v4

    .end local v4           #d:I
    .local v5, d:I
    move v13, v12

    .end local v12           #s:I
    .local v13, s:I
    :goto_1
    if-ge v13, v6, :cond_2

    .line 444
    add-int/lit8 v12, v13, 0x1

    .end local v13           #s:I
    .restart local v12       #s:I
    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    add-int/lit8 v13, v12, 0x1

    .end local v12           #s:I
    .restart local v13       #s:I
    aget-byte v15, p1, v12

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    add-int/lit8 v12, v13, 0x1

    .end local v13           #s:I
    .restart local v12       #s:I
    aget-byte v15, p1, v13

    and-int/lit16 v15, v15, 0xff

    or-int v7, v14, v15

    .line 447
    .local v7, i:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v5, 0x1

    .end local v5           #d:I
    .restart local v4       #d:I
    ushr-int/lit8 v15, v7, 0x12

    and-int/lit8 v15, v15, 0x3f

    aget-char v15, v1, v15

    aput-char v15, v14, v5

    .line 448
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v4, 0x1

    .end local v4           #d:I
    .restart local v5       #d:I
    ushr-int/lit8 v15, v7, 0xc

    and-int/lit8 v15, v15, 0x3f

    aget-char v15, v1, v15

    aput-char v15, v14, v4

    .line 449
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v5, 0x1

    .end local v5           #d:I
    .restart local v4       #d:I
    ushr-int/lit8 v15, v7, 0x6

    and-int/lit8 v15, v15, 0x3f

    aget-char v15, v1, v15

    aput-char v15, v14, v5

    .line 450
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v4, 0x1

    .end local v4           #d:I
    .restart local v5       #d:I
    and-int/lit8 v15, v7, 0x3f

    aget-char v15, v1, v15

    aput-char v15, v14, v4

    move v13, v12

    .line 451
    .end local v12           #s:I
    .restart local v13       #s:I
    goto :goto_1

    .line 454
    .end local v7           #i:I
    :cond_2
    sub-int v8, v2, v6

    .line 455
    .local v8, left:I
    if-lez v8, :cond_3

    .line 457
    aget-byte v14, p1, v6

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v15, v14, 0xa

    const/4 v14, 0x2

    if-ne v8, v14, :cond_4

    add-int/lit8 v14, v2, -0x1

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x2

    :goto_2
    or-int v7, v15, v14

    .line 460
    .restart local v7       #i:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v9, -0x5

    shr-int/lit8 v16, v7, 0xc

    aget-char v16, v1, v16

    aput-char v16, v14, v15

    .line 461
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v9, -0x4

    ushr-int/lit8 v16, v7, 0x6

    and-int/lit8 v16, v16, 0x3f

    aget-char v16, v1, v16

    aput-char v16, v14, v15

    .line 462
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v9, -0x3

    const/4 v14, 0x2

    if-ne v8, v14, :cond_5

    and-int/lit8 v14, v7, 0x3f

    aget-char v14, v1, v14

    :goto_3
    aput-char v14, v15, v16

    .line 463
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v9, -0x2

    const/16 v16, 0x3d

    aput-char v16, v14, v15

    .line 465
    .end local v7           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v9, -0x1

    const/16 v16, 0x22

    aput-char v16, v14, v15

    goto/16 :goto_0

    .line 457
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 462
    .restart local v7       #i:I
    :cond_5
    const/16 v14, 0x3d

    goto :goto_3
.end method

.method public writeFieldEmptyList(CLjava/lang/String;)V
    .locals 1
    .parameter "seperator"
    .parameter "key"

    .prologue
    .line 873
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 874
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 875
    const-string v0, "[]"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 1366
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 1367
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "checkSpecial"

    .prologue
    .line 1370
    if-nez p1, :cond_0

    .line 1371
    const-string v0, "null:"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1388
    :goto_0
    return-void

    .line 1375
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1376
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1377
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuote(Ljava/lang/String;)V

    goto :goto_0

    .line 1379
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_0

    .line 1382
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1383
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithDoubleQuote(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1385
    :cond_3
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithDoubleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldNull(CLjava/lang/String;)V
    .locals 0
    .parameter "seperator"
    .parameter "name"

    .prologue
    .line 867
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 868
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 870
    return-void
.end method

.method public writeFieldNullBoolean(CLjava/lang/String;)V
    .locals 1
    .parameter "seperator"
    .parameter "name"

    .prologue
    .line 889
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 890
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 891
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 896
    :goto_0
    return-void

    .line 894
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public writeFieldNullList(CLjava/lang/String;)V
    .locals 1
    .parameter "seperator"
    .parameter "name"

    .prologue
    .line 899
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 900
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 901
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    const-string v0, "[]"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 906
    :goto_0
    return-void

    .line 904
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public writeFieldNullNumber(CLjava/lang/String;)V
    .locals 1
    .parameter "seperator"
    .parameter "name"

    .prologue
    .line 909
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 910
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 911
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 916
    :goto_0
    return-void

    .line 914
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public writeFieldNullString(CLjava/lang/String;)V
    .locals 1
    .parameter "seperator"
    .parameter "name"

    .prologue
    .line 879
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 880
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 881
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 886
    :goto_0
    return-void

    .line 884
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;C)V
    .locals 1
    .parameter "seperator"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 919
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 920
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 921
    if-nez p3, :cond_0

    .line 922
    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 926
    :goto_0
    return-void

    .line 924
    :cond_0
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;D)V
    .locals 3
    .parameter "seperator"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1067
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1068
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1069
    const-wide/16 v1, 0x0

    cmpl-double v1, p3, v1

    if-nez v1, :cond_0

    .line 1070
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1082
    :goto_0
    return-void

    .line 1071
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1072
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1073
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1074
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1076
    :cond_2
    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, text:Ljava/lang/String;
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1078
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1080
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;F)V
    .locals 3
    .parameter "seperator"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1049
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1050
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1051
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_0

    .line 1052
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1064
    :goto_0
    return-void

    .line 1053
    :cond_0
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1054
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1055
    :cond_1
    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1056
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1058
    :cond_2
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 1059
    .local v0, text:Ljava/lang/String;
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1060
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1062
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;I)V
    .locals 9
    .parameter "seperator"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 971
    const/high16 v6, -0x8000

    if-eq p3, v6, :cond_0

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 972
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue1(CLjava/lang/String;I)V

    .line 1001
    :goto_0
    return-void

    .line 976
    :cond_1
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v1, 0x27

    .line 978
    .local v1, keySeperator:C
    :goto_1
    if-gez p3, :cond_4

    neg-int v6, p3

    int-to-long v6, v6

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    .line 980
    .local v0, intSize:I
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 981
    .local v3, nameLen:I
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x4

    add-int v4, v6, v0

    .line 982
    .local v4, newcount:I
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    if-le v4, v6, :cond_2

    .line 983
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 986
    :cond_2
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 987
    .local v5, start:I
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 989
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v6, v5

    .line 991
    add-int v6, v5, v3

    add-int/lit8 v2, v6, 0x1

    .line 993
    .local v2, nameEnd:I
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    aput-char v1, v6, v7

    .line 995
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {p2, v6, v3, v7, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 997
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v2, 0x1

    aput-char v1, v6, v7

    .line 998
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v2, 0x2

    const/16 v8, 0x3a

    aput-char v8, v6, v7

    .line 1000
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, v6, v7}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_0

    .line 976
    .end local v0           #intSize:I
    .end local v1           #keySeperator:C
    .end local v2           #nameEnd:I
    .end local v3           #nameLen:I
    .end local v4           #newcount:I
    .end local v5           #start:I
    :cond_3
    const/16 v1, 0x22

    goto :goto_1

    .line 978
    .restart local v1       #keySeperator:C
    :cond_4
    int-to-long v6, p3

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_2
.end method

.method public writeFieldValue(CLjava/lang/String;J)V
    .locals 9
    .parameter "seperator"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1010
    const-wide/high16 v6, -0x8000

    cmp-long v6, p3, v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1011
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue1(CLjava/lang/String;J)V

    .line 1040
    :goto_0
    return-void

    .line 1015
    :cond_1
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v1, 0x27

    .line 1017
    .local v1, keySeperator:C
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-gez v6, :cond_4

    neg-long v6, p3

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    .line 1019
    .local v0, intSize:I
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1020
    .local v3, nameLen:I
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x4

    add-int v4, v6, v0

    .line 1021
    .local v4, newcount:I
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    if-le v4, v6, :cond_2

    .line 1022
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1025
    :cond_2
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1026
    .local v5, start:I
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1028
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v6, v5

    .line 1030
    add-int v6, v5, v3

    add-int/lit8 v2, v6, 0x1

    .line 1032
    .local v2, nameEnd:I
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    aput-char v1, v6, v7

    .line 1034
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {p2, v6, v3, v7, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1036
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v2, 0x1

    aput-char v1, v6, v7

    .line 1037
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v2, 0x2

    const/16 v8, 0x3a

    aput-char v8, v6, v7

    .line 1039
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, p4, v6, v7}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    goto :goto_0

    .line 1015
    .end local v0           #intSize:I
    .end local v1           #keySeperator:C
    .end local v2           #nameEnd:I
    .end local v3           #nameLen:I
    .end local v4           #newcount:I
    .end local v5           #start:I
    :cond_3
    const/16 v1, 0x22

    goto :goto_1

    .line 1017
    .restart local v1       #keySeperator:C
    :cond_4
    invoke-static {p3, p4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_2
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/Enum;)V
    .locals 2
    .parameter "seperator"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1245
    .local p3, value:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    if-nez p3, :cond_0

    .line 1246
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1247
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 1264
    :goto_0
    return-void

    .line 1252
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1253
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1254
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1256
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1262
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "seperator"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1085
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1086
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1087
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1088
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1089
    if-nez p3, :cond_0

    .line 1090
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 1112
    :goto_0
    return-void

    .line 1092
    :cond_0
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1095
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1096
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1097
    const/16 v0, 0x3a

    invoke-direct {p0, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1098
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0

    .line 1100
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1104
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1105
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1106
    if-nez p3, :cond_4

    .line 1107
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1109
    :cond_4
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1
    .parameter "seperator"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1267
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1268
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1269
    if-nez p3, :cond_0

    .line 1270
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 1274
    :goto_0
    return-void

    .line 1272
    :cond_0
    invoke-virtual {p3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Z)V
    .locals 11
    .parameter "seperator"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v6, 0x5

    const/4 v10, 0x0

    .line 930
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v1, 0x27

    .line 932
    .local v1, keySeperator:C
    :goto_0
    if-eqz p3, :cond_2

    const/4 v0, 0x4

    .line 934
    .local v0, intSize:I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 935
    .local v3, nameLen:I
    iget v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x4

    add-int v4, v7, v0

    .line 936
    .local v4, newcount:I
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v4, v7, :cond_0

    .line 937
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 940
    :cond_0
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 941
    .local v5, start:I
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 943
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v7, v5

    .line 945
    add-int v7, v5, v3

    add-int/lit8 v2, v7, 0x1

    .line 947
    .local v2, nameEnd:I
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v5, 0x1

    aput-char v1, v7, v8

    .line 949
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {p2, v10, v3, v7, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 951
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v2, 0x1

    aput-char v1, v7, v8

    .line 953
    if-eqz p3, :cond_3

    .line 954
    const-string v7, ":true"

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v2, 0x2

    invoke-static {v7, v10, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 958
    :goto_2
    return-void

    .line 930
    .end local v0           #intSize:I
    .end local v1           #keySeperator:C
    .end local v2           #nameEnd:I
    .end local v3           #nameLen:I
    .end local v4           #newcount:I
    .end local v5           #start:I
    :cond_1
    const/16 v1, 0x22

    goto :goto_0

    .restart local v1       #keySeperator:C
    :cond_2
    move v0, v6

    .line 932
    goto :goto_1

    .line 956
    .restart local v0       #intSize:I
    .restart local v2       #nameEnd:I
    .restart local v3       #nameLen:I
    .restart local v4       #newcount:I
    .restart local v5       #start:I
    :cond_3
    const-string v6, ":false"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v2, 0x2

    const/4 v9, 0x6

    invoke-static {v6, v10, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public writeFieldValue1(CLjava/lang/String;I)V
    .locals 0
    .parameter "seperator"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1004
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1005
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 1007
    return-void
.end method

.method public writeFieldValue1(CLjava/lang/String;J)V
    .locals 0
    .parameter "seperator"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1043
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1044
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 1046
    return-void
.end method

.method public writeFieldValue1(CLjava/lang/String;Z)V
    .locals 1
    .parameter "seperator"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 961
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 962
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 963
    if-eqz p3, :cond_0

    .line 964
    const-string v0, "true"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 968
    :goto_0
    return-void

    .line 966
    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeInt(I)V
    .locals 4
    .parameter "i"

    .prologue
    .line 369
    const/high16 v2, -0x8000

    if-ne p1, v2, :cond_0

    .line 370
    const-string v2, "-2147483648"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 384
    :goto_0
    return-void

    .line 374
    :cond_0
    if-gez p1, :cond_2

    neg-int v2, p1

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 376
    .local v1, size:I
    :goto_1
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v0, v2, v1

    .line 377
    .local v0, newcount:I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v0, v2, :cond_1

    .line 378
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 381
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, v0, v2}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 383
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    .line 374
    .end local v0           #newcount:I
    .end local v1           #size:I
    :cond_2
    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v1

    goto :goto_1
.end method

.method public writeIntAndChar(IC)V
    .locals 5
    .parameter "i"
    .parameter "c"

    .prologue
    .line 514
    const/high16 v3, -0x8000

    if-ne p1, v3, :cond_0

    .line 515
    const-string v3, "-2147483648"

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 533
    :goto_0
    return-void

    .line 520
    :cond_0
    if-gez p1, :cond_2

    neg-int v3, p1

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 522
    .local v2, size:I
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v0, v3, v2

    .line 523
    .local v0, newcount0:I
    add-int/lit8 v1, v0, 0x1

    .line 525
    .local v1, newcount1:I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v1, v3, :cond_1

    .line 526
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 529
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, v0, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 530
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p2, v3, v0

    .line 532
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    .line 520
    .end local v0           #newcount0:I
    .end local v1           #newcount1:I
    .end local v2           #size:I
    :cond_2
    int-to-long v3, p1

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v2

    goto :goto_1
.end method

.method public writeIntArray([I)V
    .locals 13
    .parameter "array"

    .prologue
    const/high16 v12, -0x8000

    .line 469
    array-length v8, p1

    new-array v5, v8, [I

    .line 470
    .local v5, sizeArray:[I
    const/4 v6, 0x2

    .line 471
    .local v6, totalSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, p1

    if-ge v2, v8, :cond_3

    .line 472
    if-eqz v2, :cond_0

    .line 473
    add-int/lit8 v6, v6, 0x1

    .line 475
    :cond_0
    aget v7, p1, v2

    .line 477
    .local v7, val:I
    if-ne v7, v12, :cond_1

    .line 478
    const-string v8, "-2147483648"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    .line 482
    .local v4, size:I
    :goto_1
    aput v4, v5, v2

    .line 483
    add-int/2addr v6, v4

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    .end local v4           #size:I
    :cond_1
    if-gez v7, :cond_2

    neg-int v8, v7

    int-to-long v8, v8

    invoke-static {v8, v9}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    .restart local v4       #size:I
    :goto_2
    goto :goto_1

    .end local v4           #size:I
    :cond_2
    int-to-long v8, v7

    invoke-static {v8, v9}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v4

    goto :goto_2

    .line 486
    .end local v7           #val:I
    :cond_3
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v3, v8, v6

    .line 487
    .local v3, newcount:I
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v8, v8

    if-le v3, v8, :cond_4

    .line 488
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 491
    :cond_4
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v10, 0x5b

    aput-char v10, v8, v9

    .line 493
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v8, 0x1

    .line 494
    .local v0, currentSize:I
    const/4 v2, 0x0

    :goto_3
    array-length v8, p1

    if-ge v2, v8, :cond_7

    .line 495
    if-eqz v2, :cond_5

    .line 496
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0           #currentSize:I
    .local v1, currentSize:I
    const/16 v9, 0x2c

    aput-char v9, v8, v0

    move v0, v1

    .line 499
    .end local v1           #currentSize:I
    .restart local v0       #currentSize:I
    :cond_5
    aget v7, p1, v2

    .line 500
    .restart local v7       #val:I
    if-ne v7, v12, :cond_6

    .line 501
    const-string v8, "-2147483648"

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget v11, v5, v2

    invoke-static {v8, v9, v10, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    aget v8, v5, v2

    add-int/2addr v0, v8

    .line 494
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 504
    :cond_6
    aget v8, v5, v2

    add-int/2addr v0, v8

    .line 505
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v7, v0, v8}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_4

    .line 508
    .end local v7           #val:I
    :cond_7
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v9, 0x5d

    aput-char v9, v8, v0

    .line 510
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 511
    return-void
.end method

.method public writeKeyWithDoubleQuote(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 821
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithDoubleQuote(Ljava/lang/String;Z)V

    .line 822
    return-void
.end method

.method public writeKeyWithDoubleQuote(Ljava/lang/String;Z)V
    .locals 13
    .parameter "text"
    .parameter "checkSpecial"

    .prologue
    const/16 v12, 0x22

    .line 825
    sget-object v5, Lcom/alibaba/fastjson/parser/CharTypes;->specicalFlags_doubleQuotes:[Z

    .line 827
    .local v5, specicalFlags_doubleQuotes:[Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 828
    .local v3, len:I
    iget v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v7, v3

    add-int/lit8 v4, v7, 0x3

    .line 829
    .local v4, newcount:I
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v4, v7, :cond_0

    .line 830
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 833
    :cond_0
    iget v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v7, 0x1

    .line 834
    .local v6, start:I
    add-int v1, v6, v3

    .line 836
    .local v1, end:I
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v12, v7, v8

    .line 837
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v7, v3, v8, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 839
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 841
    if-eqz p2, :cond_6

    .line 842
    move v2, v6

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 843
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v7, v2

    .line 844
    .local v0, ch:C
    array-length v7, v5

    if-ge v0, v7, :cond_1

    aget-boolean v7, v5, v0

    if-nez v7, :cond_3

    :cond_1
    const/16 v7, 0x9

    if-ne v0, v7, :cond_2

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    const/16 v7, 0x2f

    if-ne v0, v7, :cond_5

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 848
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 849
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v4, v7, :cond_4

    .line 850
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 852
    :cond_4
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 854
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v2, 0x1

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x2

    sub-int v11, v1, v2

    add-int/lit8 v11, v11, -0x1

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v8, 0x5c

    aput-char v8, v7, v2

    .line 856
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v8, Lcom/alibaba/fastjson/parser/CharTypes;->replaceChars:[C

    aget-char v8, v8, v0

    aput-char v8, v7, v2

    .line 857
    add-int/lit8 v1, v1, 0x1

    .line 842
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 862
    .end local v0           #ch:C
    .end local v2           #i:I
    :cond_6
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v8, -0x2

    aput-char v12, v7, v8

    .line 863
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v8, -0x1

    const/16 v9, 0x3a

    aput-char v9, v7, v8

    .line 864
    return-void
.end method

.method public writeLong(J)V
    .locals 4
    .parameter "i"

    .prologue
    .line 558
    const-wide/high16 v2, -0x8000

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 559
    const-string v2, "-9223372036854775808"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 573
    :goto_0
    return-void

    .line 563
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    neg-long v2, p1

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 565
    .local v1, size:I
    :goto_1
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v0, v2, v1

    .line 566
    .local v0, newcount:I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v0, v2, :cond_1

    .line 567
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 570
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v0, v2}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 572
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    .line 563
    .end local v0           #newcount:I
    .end local v1           #size:I
    :cond_2
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v1

    goto :goto_1
.end method

.method public writeLongAndChar(JC)V
    .locals 5
    .parameter "i"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    const-wide/high16 v3, -0x8000

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 537
    const-string v3, "-9223372036854775808"

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 555
    :goto_0
    return-void

    .line 542
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_2

    neg-long v3, p1

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 544
    .local v2, size:I
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v0, v3, v2

    .line 545
    .local v0, newcount0:I
    add-int/lit8 v1, v0, 0x1

    .line 547
    .local v1, newcount1:I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v1, v3, :cond_1

    .line 548
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 551
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v0, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 552
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p3, v3, v0

    .line 554
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    .line 542
    .end local v0           #newcount0:I
    .end local v1           #newcount1:I
    .end local v2           #size:I
    :cond_2
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v2

    goto :goto_1
.end method

.method public writeLongArray([J)V
    .locals 13
    .parameter "array"

    .prologue
    .line 588
    array-length v9, p1

    new-array v5, v9, [I

    .line 589
    .local v5, sizeArray:[I
    const/4 v6, 0x2

    .line 590
    .local v6, totalSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, p1

    if-ge v2, v9, :cond_3

    .line 591
    if-eqz v2, :cond_0

    .line 592
    add-int/lit8 v6, v6, 0x1

    .line 594
    :cond_0
    aget-wide v7, p1, v2

    .line 596
    .local v7, val:J
    const-wide/high16 v9, -0x8000

    cmp-long v9, v7, v9

    if-nez v9, :cond_1

    .line 597
    const-string v9, "-9223372036854775808"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .line 601
    .local v4, size:I
    :goto_1
    aput v4, v5, v2

    .line 602
    add-int/2addr v6, v4

    .line 590
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 599
    .end local v4           #size:I
    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gez v9, :cond_2

    neg-long v9, v7

    invoke-static {v9, v10}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v9

    add-int/lit8 v4, v9, 0x1

    .restart local v4       #size:I
    :goto_2
    goto :goto_1

    .end local v4           #size:I
    :cond_2
    invoke-static {v7, v8}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v4

    goto :goto_2

    .line 605
    .end local v7           #val:J
    :cond_3
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v3, v9, v6

    .line 606
    .local v3, newcount:I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v3, v9, :cond_4

    .line 607
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 610
    :cond_4
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x5b

    aput-char v11, v9, v10

    .line 612
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v9, 0x1

    .line 613
    .local v0, currentSize:I
    const/4 v2, 0x0

    :goto_3
    array-length v9, p1

    if-ge v2, v9, :cond_7

    .line 614
    if-eqz v2, :cond_5

    .line 615
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0           #currentSize:I
    .local v1, currentSize:I
    const/16 v10, 0x2c

    aput-char v10, v9, v0

    move v0, v1

    .line 618
    .end local v1           #currentSize:I
    .restart local v0       #currentSize:I
    :cond_5
    aget-wide v7, p1, v2

    .line 619
    .restart local v7       #val:J
    const-wide/high16 v9, -0x8000

    cmp-long v9, v7, v9

    if-nez v9, :cond_6

    .line 620
    const-string v9, "-9223372036854775808"

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget v12, v5, v2

    invoke-static {v9, v10, v11, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 621
    aget v9, v5, v2

    add-int/2addr v0, v9

    .line 613
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 623
    :cond_6
    aget v9, v5, v2

    add-int/2addr v0, v9

    .line 624
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v7, v8, v0, v9}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    goto :goto_4

    .line 627
    .end local v7           #val:J
    :cond_7
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5d

    aput-char v10, v9, v0

    .line 629
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 630
    return-void
.end method

.method public writeNull()V
    .locals 5

    .prologue
    const/16 v4, 0x6c

    .line 576
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v1, 0x4

    .line 577
    .local v0, newcount:I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 578
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v3, 0x6e

    aput-char v3, v1, v2

    .line 581
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x75

    aput-char v3, v1, v2

    .line 582
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v2, 0x2

    aput-char v4, v1, v2

    .line 583
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v2, 0x3

    aput-char v4, v1, v2

    .line 584
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 585
    return-void
.end method

.method public writeShortArray([S)V
    .locals 11
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    array-length v8, p1

    new-array v5, v8, [I

    .line 388
    .local v5, sizeArray:[I
    const/4 v6, 0x2

    .line 389
    .local v6, totalSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, p1

    if-ge v2, v8, :cond_1

    .line 390
    if-eqz v2, :cond_0

    .line 391
    add-int/lit8 v6, v6, 0x1

    .line 393
    :cond_0
    aget-short v7, p1, v2

    .line 394
    .local v7, val:S
    int-to-long v8, v7

    invoke-static {v8, v9}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v4

    .line 395
    .local v4, size:I
    aput v4, v5, v2

    .line 396
    add-int/2addr v6, v4

    .line 389
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 399
    .end local v4           #size:I
    .end local v7           #val:S
    :cond_1
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v3, v8, v6

    .line 400
    .local v3, newcount:I
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v8, v8

    if-le v3, v8, :cond_2

    .line 401
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 404
    :cond_2
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v10, 0x5b

    aput-char v10, v8, v9

    .line 406
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v8, 0x1

    .line 407
    .local v0, currentSize:I
    const/4 v2, 0x0

    :goto_1
    array-length v8, p1

    if-ge v2, v8, :cond_4

    .line 408
    if-eqz v2, :cond_3

    .line 409
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0           #currentSize:I
    .local v1, currentSize:I
    const/16 v9, 0x2c

    aput-char v9, v8, v0

    move v0, v1

    .line 412
    .end local v1           #currentSize:I
    .restart local v0       #currentSize:I
    :cond_3
    aget-short v7, p1, v2

    .line 413
    .restart local v7       #val:S
    aget v8, v5, v2

    add-int/2addr v0, v8

    .line 414
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v7, v0, v8}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 407
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 416
    .end local v7           #val:S
    :cond_4
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v9, 0x5d

    aput-char v9, v8, v0

    .line 418
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 419
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 1286
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 1291
    :goto_0
    return-void

    .line 1289
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;C)V
    .locals 1
    .parameter "text"
    .parameter "seperator"

    .prologue
    .line 1277
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1278
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 1283
    :goto_0
    return-void

    .line 1281
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 5
    .parameter "out"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 196
    .local v0, bytes:[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 197
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 5
    .parameter "out"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 201
    .local v0, bytes:[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 202
    return-void
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 192
    return-void
.end method
