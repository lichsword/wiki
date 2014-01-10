.class public Lcom/taobao/android/ssologin/IntHashMap;
.super Ljava/lang/Object;
.source "IntHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/ssologin/IntHashMap$Entry;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_CAPACITY:I = 0x40000000


# instance fields
.field private count:I

.field private loadFactor:F

.field private table:[Lcom/taobao/android/ssologin/IntHashMap$Entry;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    const/16 v0, 0x10

    const/high16 v1, 0x3f40

    invoke-direct {p0, v0, v1}, Lcom/taobao/android/ssologin/IntHashMap;-><init>(IF)V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 41
    const/high16 v0, 0x3f40

    invoke-direct {p0, p1, v0}, Lcom/taobao/android/ssologin/IntHashMap;-><init>(IF)V

    .line 42
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-gez p1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal Capacity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_0
    const/high16 v1, 0x4000

    if-le p1, v1, :cond_1

    .line 58
    const/high16 p1, 0x4000

    .line 61
    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_2

    .line 62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal Load: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_2
    const/4 v0, 0x1

    .line 68
    .local v0, capacity:I
    :goto_0
    if-lt v0, p1, :cond_3

    .line 72
    iput p2, p0, Lcom/taobao/android/ssologin/IntHashMap;->loadFactor:F

    .line 73
    new-array v1, v0, [Lcom/taobao/android/ssologin/IntHashMap$Entry;

    iput-object v1, p0, Lcom/taobao/android/ssologin/IntHashMap;->table:[Lcom/taobao/android/ssologin/IntHashMap$Entry;

    .line 74
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/taobao/android/ssologin/IntHashMap;->threshold:I

    .line 75
    return-void

    .line 69
    :cond_3
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 235
    iget-object v1, p0, Lcom/taobao/android/ssologin/IntHashMap;->table:[Lcom/taobao/android/ssologin/IntHashMap$Entry;

    .line 237
    .local v1, tab:[Lcom/taobao/android/ssologin/IntHashMap$Entry;
    array-length v0, v1

    .local v0, index:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 241
    const/4 v2, 0x0

    iput v2, p0, Lcom/taobao/android/ssologin/IntHashMap;->count:I

    .line 242
    return-void

    .line 238
    :cond_0
    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0
.end method

.method public containsKey(I)Z
    .locals 6
    .parameter "key"

    .prologue
    .line 103
    iget-object v3, p0, Lcom/taobao/android/ssologin/IntHashMap;->table:[Lcom/taobao/android/ssologin/IntHashMap$Entry;

    .line 104
    .local v3, tab:[Lcom/taobao/android/ssologin/IntHashMap$Entry;
    move v1, p1

    .line 105
    .local v1, hash:I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 107
    .local v2, index:I
    aget-object v0, v3, v2

    .local v0, e:Lcom/taobao/android/ssologin/IntHashMap$Entry;
    :goto_0
    if-nez v0, :cond_0

    .line 113
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 108
    :cond_0
    iget v4, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->hash:I

    if-ne v4, v1, :cond_1

    .line 109
    const/4 v4, 0x1

    goto :goto_1

    .line 107
    :cond_1
    iget-object v0, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->next:Lcom/taobao/android/ssologin/IntHashMap$Entry;

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 8
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 124
    iget-object v3, p0, Lcom/taobao/android/ssologin/IntHashMap;->table:[Lcom/taobao/android/ssologin/IntHashMap$Entry;

    .line 126
    .local v3, tab:[Lcom/taobao/android/ssologin/IntHashMap$Entry;
    if-nez p1, :cond_1

    move v4, v5

    .line 128
    .local v4, valueIsNull:Z
    :goto_0
    array-length v1, v3

    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    if-gtz v2, :cond_2

    move v5, v6

    .line 137
    :cond_0
    :goto_2
    return v5

    .end local v1           #i:I
    .end local v4           #valueIsNull:Z
    :cond_1
    move v4, v6

    .line 126
    goto :goto_0

    .line 129
    .restart local v1       #i:I
    .restart local v4       #valueIsNull:Z
    :cond_2
    aget-object v0, v3, v1

    .local v0, e:Lcom/taobao/android/ssologin/IntHashMap$Entry;
    :goto_3
    if-nez v0, :cond_3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 130
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_3
    if-eqz v4, :cond_5

    iget-object v7, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->value:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 129
    :cond_4
    iget-object v0, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->next:Lcom/taobao/android/ssologin/IntHashMap$Entry;

    goto :goto_3

    .line 131
    :cond_5
    iget-object v7, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2
.end method

.method public get(I)Ljava/lang/Object;
    .locals 6
    .parameter "key"

    .prologue
    .line 148
    iget-object v3, p0, Lcom/taobao/android/ssologin/IntHashMap;->table:[Lcom/taobao/android/ssologin/IntHashMap$Entry;

    .line 149
    .local v3, tab:[Lcom/taobao/android/ssologin/IntHashMap$Entry;
    move v1, p1

    .line 150
    .local v1, hash:I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 152
    .local v2, index:I
    aget-object v0, v3, v2

    .local v0, e:Lcom/taobao/android/ssologin/IntHashMap$Entry;
    :goto_0
    if-nez v0, :cond_0

    .line 158
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 153
    :cond_0
    iget v4, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->hash:I

    if-ne v4, v1, :cond_1

    .line 154
    iget-object v4, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_1

    .line 152
    :cond_1
    iget-object v0, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->next:Lcom/taobao/android/ssologin/IntHashMap$Entry;

    goto :goto_0
.end method

.method protected getCapacity()I
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/taobao/android/ssologin/IntHashMap;->table:[Lcom/taobao/android/ssologin/IntHashMap$Entry;

    array-length v0, v0

    return v0
.end method

.method protected getThreshold()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/taobao/android/ssologin/IntHashMap;->threshold:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/taobao/android/ssologin/IntHashMap;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keys()[I
    .locals 6

    .prologue
    .line 245
    iget v5, p0, Lcom/taobao/android/ssologin/IntHashMap;->count:I

    if-nez v5, :cond_1

    .line 246
    const/4 v5, 0x0

    new-array v4, v5, [I

    .line 261
    :cond_0
    return-object v4

    .line 249
    :cond_1
    iget v5, p0, Lcom/taobao/android/ssologin/IntHashMap;->count:I

    new-array v4, v5, [I

    .line 250
    .local v4, keys:[I
    const/4 v2, 0x0

    .line 252
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/taobao/android/ssologin/IntHashMap;->table:[Lcom/taobao/android/ssologin/IntHashMap$Entry;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 253
    iget-object v5, p0, Lcom/taobao/android/ssologin/IntHashMap;->table:[Lcom/taobao/android/ssologin/IntHashMap$Entry;

    aget-object v0, v5, v1

    .local v0, entry:Lcom/taobao/android/ssologin/IntHashMap$Entry;
    move v3, v2

    .line 255
    .end local v2           #index:I
    .local v3, index:I
    :goto_1
    if-nez v0, :cond_2

    .line 252
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_0

    .line 256
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    iget v5, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->key:I

    aput v5, v4, v3

    .line 257
    iget-object v0, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->next:Lcom/taobao/android/ssologin/IntHashMap$Entry;

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_1
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "key"
    .parameter "value"

    .prologue
    const v7, 0x7fffffff

    .line 171
    iget-object v4, p0, Lcom/taobao/android/ssologin/IntHashMap;->table:[Lcom/taobao/android/ssologin/IntHashMap$Entry;

    .line 172
    .local v4, tab:[Lcom/taobao/android/ssologin/IntHashMap$Entry;
    move v1, p1

    .line 173
    .local v1, hash:I
    and-int v5, v1, v7

    array-length v6, v4

    rem-int v2, v5, v6

    .line 175
    .local v2, index:I
    aget-object v0, v4, v2

    .local v0, e:Lcom/taobao/android/ssologin/IntHashMap$Entry;
    :goto_0
    if-nez v0, :cond_1

    .line 184
    iget v5, p0, Lcom/taobao/android/ssologin/IntHashMap;->count:I

    iget v6, p0, Lcom/taobao/android/ssologin/IntHashMap;->threshold:I

    if-lt v5, v6, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/taobao/android/ssologin/IntHashMap;->rehash()V

    .line 187
    iget-object v4, p0, Lcom/taobao/android/ssologin/IntHashMap;->table:[Lcom/taobao/android/ssologin/IntHashMap$Entry;

    .line 188
    and-int v5, v1, v7

    array-length v6, v4

    rem-int v2, v5, v6

    .line 192
    :cond_0
    new-instance v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;

    .end local v0           #e:Lcom/taobao/android/ssologin/IntHashMap$Entry;
    aget-object v5, v4, v2

    invoke-direct {v0, v1, p1, p2, v5}, Lcom/taobao/android/ssologin/IntHashMap$Entry;-><init>(IILjava/lang/Object;Lcom/taobao/android/ssologin/IntHashMap$Entry;)V

    .line 194
    .restart local v0       #e:Lcom/taobao/android/ssologin/IntHashMap$Entry;
    aput-object v0, v4, v2

    .line 195
    iget v5, p0, Lcom/taobao/android/ssologin/IntHashMap;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/taobao/android/ssologin/IntHashMap;->count:I

    .line 196
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 176
    :cond_1
    iget v5, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_2

    .line 177
    iget-object v3, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 179
    .local v3, old:Ljava/lang/Object;
    iput-object p2, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_1

    .line 175
    .end local v3           #old:Ljava/lang/Object;
    :cond_2
    iget-object v0, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->next:Lcom/taobao/android/ssologin/IntHashMap$Entry;

    goto :goto_0
.end method

.method protected rehash()V
    .locals 11

    .prologue
    .line 297
    iget-object v9, p0, Lcom/taobao/android/ssologin/IntHashMap;->table:[Lcom/taobao/android/ssologin/IntHashMap$Entry;

    array-length v7, v9

    .line 298
    .local v7, oldCapacity:I
    iget-object v8, p0, Lcom/taobao/android/ssologin/IntHashMap;->table:[Lcom/taobao/android/ssologin/IntHashMap$Entry;

    .line 300
    .local v8, oldMap:[Lcom/taobao/android/ssologin/IntHashMap$Entry;
    mul-int/lit8 v4, v7, 0x2

    .line 301
    .local v4, newCapacity:I
    new-array v5, v4, [Lcom/taobao/android/ssologin/IntHashMap$Entry;

    .line 303
    .local v5, newMap:[Lcom/taobao/android/ssologin/IntHashMap$Entry;
    int-to-float v9, v4

    iget v10, p0, Lcom/taobao/android/ssologin/IntHashMap;->loadFactor:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/taobao/android/ssologin/IntHashMap;->threshold:I

    .line 304
    iput-object v5, p0, Lcom/taobao/android/ssologin/IntHashMap;->table:[Lcom/taobao/android/ssologin/IntHashMap$Entry;

    .line 306
    move v1, v7

    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    if-gtz v2, :cond_0

    .line 318
    return-void

    .line 307
    :cond_0
    aget-object v6, v8, v1

    .local v6, old:Lcom/taobao/android/ssologin/IntHashMap$Entry;
    :goto_1
    if-nez v6, :cond_1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 308
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_1
    move-object v0, v6

    .line 310
    .local v0, e:Lcom/taobao/android/ssologin/IntHashMap$Entry;
    iget-object v6, v6, Lcom/taobao/android/ssologin/IntHashMap$Entry;->next:Lcom/taobao/android/ssologin/IntHashMap$Entry;

    .line 312
    iget v9, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->hash:I

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    rem-int v3, v9, v4

    .line 314
    .local v3, index:I
    aget-object v9, v5, v3

    iput-object v9, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->next:Lcom/taobao/android/ssologin/IntHashMap$Entry;

    .line 315
    aput-object v0, v5, v3

    goto :goto_1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 9
    .parameter "key"

    .prologue
    const/4 v6, 0x0

    .line 207
    iget-object v5, p0, Lcom/taobao/android/ssologin/IntHashMap;->table:[Lcom/taobao/android/ssologin/IntHashMap$Entry;

    .line 208
    .local v5, tab:[Lcom/taobao/android/ssologin/IntHashMap$Entry;
    move v1, p1

    .line 209
    .local v1, hash:I
    const v7, 0x7fffffff

    and-int/2addr v7, v1

    array-length v8, v5

    rem-int v2, v7, v8

    .line 211
    .local v2, index:I
    aget-object v0, v5, v2

    .local v0, e:Lcom/taobao/android/ssologin/IntHashMap$Entry;
    const/4 v4, 0x0

    .local v4, prev:Lcom/taobao/android/ssologin/IntHashMap$Entry;
    :goto_0
    if-nez v0, :cond_0

    move-object v3, v6

    .line 228
    :goto_1
    return-object v3

    .line 212
    :cond_0
    iget v7, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->hash:I

    if-ne v7, v1, :cond_2

    .line 213
    if-eqz v4, :cond_1

    .line 214
    iget-object v7, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->next:Lcom/taobao/android/ssologin/IntHashMap$Entry;

    iput-object v7, v4, Lcom/taobao/android/ssologin/IntHashMap$Entry;->next:Lcom/taobao/android/ssologin/IntHashMap$Entry;

    .line 219
    :goto_2
    iget v7, p0, Lcom/taobao/android/ssologin/IntHashMap;->count:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/taobao/android/ssologin/IntHashMap;->count:I

    .line 221
    iget-object v3, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 223
    .local v3, oldValue:Ljava/lang/Object;
    iput-object v6, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_1

    .line 216
    .end local v3           #oldValue:Ljava/lang/Object;
    :cond_1
    iget-object v7, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->next:Lcom/taobao/android/ssologin/IntHashMap$Entry;

    aput-object v7, v5, v2

    goto :goto_2

    .line 211
    :cond_2
    move-object v4, v0

    iget-object v0, v0, Lcom/taobao/android/ssologin/IntHashMap$Entry;->next:Lcom/taobao/android/ssologin/IntHashMap$Entry;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/taobao/android/ssologin/IntHashMap;->count:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 272
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/16 v5, 0x7b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 274
    invoke-virtual {p0}, Lcom/taobao/android/ssologin/IntHashMap;->keys()[I

    move-result-object v3

    .line 276
    .local v3, keys:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-lt v1, v5, :cond_0

    .line 288
    const/16 v5, 0x7d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 277
    :cond_0
    aget v2, v3, v1

    .line 278
    .local v2, key:I
    invoke-virtual {p0, v2}, Lcom/taobao/android/ssologin/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 280
    .local v4, value:Ljava/lang/Object;
    if-lez v1, :cond_1

    .line 281
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    if-ne v4, p0, :cond_2

    const-string v4, "(this Map)"

    .end local v4           #value:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
