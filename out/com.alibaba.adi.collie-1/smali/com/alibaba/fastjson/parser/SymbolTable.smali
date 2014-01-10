.class public Lcom/alibaba/fastjson/parser/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
    }
.end annotation


# static fields
.field public static final DEFAULT_TABLE_SIZE:I = 0x80

.field public static final MAX_BUCKET_LENTH:I = 0x8

.field public static final MAX_SIZE:I = 0x400


# instance fields
.field private final buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

.field private final indexMask:I

.field private size:I

.field private final symbols:[Ljava/lang/String;

.field private final symbols_char:[[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;-><init>(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "tableSize"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    .line 40
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    .line 41
    new-array v0, p1, [Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    .line 42
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    .line 43
    new-array v0, p1, [[C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols_char:[[C

    .line 44
    return-void
.end method

.method public static final hash([CII)I
    .locals 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, h:I
    move v2, p1

    .line 135
    .local v2, off:I
    const/4 v1, 0x0

    .local v1, i:I
    move v3, v2

    .end local v2           #off:I
    .local v3, off:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 136
    mul-int/lit8 v4, v0, 0x1f

    add-int/lit8 v2, v3, 0x1

    .end local v3           #off:I
    .restart local v2       #off:I
    aget-char v5, p0, v3

    add-int v0, v4, v5

    .line 135
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #off:I
    .restart local v3       #off:I
    goto :goto_0

    .line 138
    :cond_0
    return v0
.end method


# virtual methods
.method public addSymbol([CII)Ljava/lang/String;
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 48
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->hash([CII)I

    move-result v0

    .line 49
    .local v0, hash:I
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public addSymbol([CIII)Ljava/lang/String;
    .locals 16
    .parameter "buffer"
    .parameter "offset"
    .parameter "len"
    .parameter "hash"

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    and-int v9, p4, v4

    .line 65
    .local v9, bucket:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    aget-object v15, v4, v9

    .line 67
    .local v15, sym:Ljava/lang/String;
    const/4 v14, 0x1

    .line 69
    .local v14, match:Z
    if-eqz v15, :cond_3

    .line 70
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, p3

    if-ne v4, v0, :cond_2

    .line 71
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols_char:[[C

    aget-object v10, v4, v9

    .line 73
    .local v10, characters:[C
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move/from16 v0, p3

    if-ge v13, v0, :cond_0

    .line 74
    add-int v4, p2, v13

    aget-char v4, p1, v4

    aget-char v5, v10, v13

    if-eq v4, v5, :cond_1

    .line 75
    const/4 v14, 0x0

    .line 80
    :cond_0
    if-eqz v14, :cond_3

    .line 124
    .end local v10           #characters:[C
    .end local v13           #i:I
    .end local v15           #sym:Ljava/lang/String;
    :goto_1
    return-object v15

    .line 73
    .restart local v10       #characters:[C
    .restart local v13       #i:I
    .restart local v15       #sym:Ljava/lang/String;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 84
    .end local v10           #characters:[C
    .end local v13           #i:I
    :cond_2
    const/4 v14, 0x0

    .line 89
    :cond_3
    const/4 v11, 0x0

    .line 90
    .local v11, entryIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v3, v4, v9

    .local v3, entry:Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
    :goto_2
    if-eqz v3, :cond_8

    .line 91
    iget-object v10, v3, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    .line 92
    .restart local v10       #characters:[C
    array-length v4, v10

    move/from16 v0, p3

    if-ne v0, v4, :cond_5

    iget v4, v3, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->hashCode:I

    move/from16 v0, p4

    if-ne v0, v4, :cond_5

    .line 93
    const/4 v12, 0x1

    .line 94
    .local v12, eq:Z
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_3
    move/from16 v0, p3

    if-ge v13, v0, :cond_4

    .line 95
    add-int v4, p2, v13

    aget-char v4, p1, v4

    aget-char v5, v10, v13

    if-eq v4, v5, :cond_6

    .line 96
    const/4 v12, 0x0

    .line 101
    :cond_4
    if-nez v12, :cond_7

    .line 102
    add-int/lit8 v11, v11, 0x1

    .line 90
    .end local v12           #eq:Z
    .end local v13           #i:I
    :cond_5
    iget-object v3, v3, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->next:Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    goto :goto_2

    .line 94
    .restart local v12       #eq:Z
    .restart local v13       #i:I
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 105
    :cond_7
    iget-object v15, v3, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    goto :goto_1

    .line 108
    .end local v10           #characters:[C
    .end local v12           #eq:Z
    .end local v13           #i:I
    :cond_8
    const/16 v4, 0x8

    if-lt v11, v4, :cond_9

    .line 109
    new-instance v15, Ljava/lang/String;

    .end local v15           #sym:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    .line 113
    .restart local v15       #sym:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    const/16 v5, 0x400

    if-lt v4, v5, :cond_a

    .line 114
    new-instance v15, Ljava/lang/String;

    .end local v15           #sym:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    .line 117
    .restart local v15       #sym:Ljava/lang/String;
    :cond_a
    new-instance v3, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    .end local v3           #entry:Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v8, v4, v9

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;-><init>([CIIILcom/alibaba/fastjson/parser/SymbolTable$Entry;)V

    .line 118
    .restart local v3       #entry:Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aput-object v3, v4, v9

    .line 119
    if-eqz v14, :cond_b

    .line 120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    iget-object v5, v3, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    aput-object v5, v4, v9

    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols_char:[[C

    iget-object v5, v3, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    aput-object v5, v4, v9

    .line 123
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    .line 124
    iget-object v15, v3, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    return v0
.end method
