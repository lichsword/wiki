.class public Lcom/alibaba/fastjson/serializer/FilterUtils;
.super Ljava/lang/Object;
.source "FilterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Z
    .locals 6
    .parameter "serializer"
    .parameter "object"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v3

    .line 168
    .local v3, propertyFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v3, :cond_2

    .line 169
    const/4 v0, 0x1

    .line 171
    .local v0, apply:Z
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 172
    .local v4, propertyValue:Ljava/lang/Byte;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 173
    .local v2, propertyFilter:Lcom/alibaba/fastjson/serializer/PropertyFilter;
    invoke-interface {v2, p1, p2, v4}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 181
    .end local v0           #apply:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #propertyFilter:Lcom/alibaba/fastjson/serializer/PropertyFilter;
    .end local v4           #propertyValue:Ljava/lang/Byte;
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;C)Z
    .locals 6
    .parameter "serializer"
    .parameter "object"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v3

    .line 225
    .local v3, propertyFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v3, :cond_2

    .line 226
    const/4 v0, 0x1

    .line 228
    .local v0, apply:Z
    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 229
    .local v4, propertyValue:Ljava/lang/Character;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 230
    .local v2, propertyFilter:Lcom/alibaba/fastjson/serializer/PropertyFilter;
    invoke-interface {v2, p1, p2, v4}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 238
    .end local v0           #apply:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #propertyFilter:Lcom/alibaba/fastjson/serializer/PropertyFilter;
    .end local v4           #propertyValue:Ljava/lang/Character;
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;D)Z
    .locals 6
    .parameter "serializer"
    .parameter "object"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v3

    .line 282
    .local v3, propertyFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v3, :cond_2

    .line 283
    const/4 v0, 0x1

    .line 285
    .local v0, apply:Z
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 286
    .local v4, propertyValue:Ljava/lang/Double;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 287
    .local v2, propertyFilter:Lcom/alibaba/fastjson/serializer/PropertyFilter;
    invoke-interface {v2, p1, p2, v4}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 295
    .end local v0           #apply:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #propertyFilter:Lcom/alibaba/fastjson/serializer/PropertyFilter;
    .end local v4           #propertyValue:Ljava/lang/Double;
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;F)Z
    .locals 6
    .parameter "serializer"
    .parameter "object"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v3

    .line 263
    .local v3, propertyFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v3, :cond_2

    .line 264
    const/4 v0, 0x1

    .line 266
    .local v0, apply:Z
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 267
    .local v4, propertyValue:Ljava/lang/Float;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 268
    .local v2, propertyFilter:Lcom/alibaba/fastjson/serializer/PropertyFilter;
    invoke-interface {v2, p1, p2, v4}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 276
    .end local v0           #apply:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #propertyFilter:Lcom/alibaba/fastjson/serializer/PropertyFilter;
    .end local v4           #propertyValue:Ljava/lang/Float;
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;I)Z
    .locals 6
    .parameter "serializer"
    .parameter "object"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v3

    .line 206
    .local v3, propertyFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v3, :cond_2

    .line 207
    const/4 v0, 0x1

    .line 209
    .local v0, apply:Z
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 210
    .local v4, propertyValue:Ljava/lang/Integer;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 211
    .local v2, propertyFilter:Lcom/alibaba/fastjson/serializer/PropertyFilter;
    invoke-interface {v2, p1, p2, v4}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 219
    .end local v0           #apply:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #propertyFilter:Lcom/alibaba/fastjson/serializer/PropertyFilter;
    .end local v4           #propertyValue:Ljava/lang/Integer;
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;J)Z
    .locals 6
    .parameter "serializer"
    .parameter "object"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v3

    .line 244
    .local v3, propertyFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v3, :cond_2

    .line 245
    const/4 v0, 0x1

    .line 247
    .local v0, apply:Z
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 248
    .local v4, propertyValue:Ljava/lang/Long;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 249
    .local v2, propertyFilter:Lcom/alibaba/fastjson/serializer/PropertyFilter;
    invoke-interface {v2, p1, p2, v4}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 257
    .end local v0           #apply:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #propertyFilter:Lcom/alibaba/fastjson/serializer/PropertyFilter;
    .end local v4           #propertyValue:Ljava/lang/Long;
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5
    .parameter "serializer"
    .parameter "object"
    .parameter "key"
    .parameter "propertyValue"

    .prologue
    const/4 v3, 0x1

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v2

    .line 152
    .local v2, propertyFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-nez v2, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v3

    .line 156
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 157
    .local v1, propertyFilter:Lcom/alibaba/fastjson/serializer/PropertyFilter;
    invoke-interface {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 158
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;S)Z
    .locals 6
    .parameter "serializer"
    .parameter "object"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v3

    .line 187
    .local v3, propertyFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v3, :cond_2

    .line 188
    const/4 v0, 0x1

    .line 190
    .local v0, apply:Z
    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    .line 191
    .local v4, propertyValue:Ljava/lang/Short;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 192
    .local v2, propertyFilter:Lcom/alibaba/fastjson/serializer/PropertyFilter;
    invoke-interface {v2, p1, p2, v4}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 200
    .end local v0           #apply:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #propertyFilter:Lcom/alibaba/fastjson/serializer/PropertyFilter;
    .end local v4           #propertyValue:Ljava/lang/Short;
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 5
    .parameter "serializer"
    .parameter "object"
    .parameter "key"

    .prologue
    const/4 v3, 0x1

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyPreFiltersDirect()Ljava/util/List;

    move-result-object v1

    .line 136
    .local v1, filters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    if-nez v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v3

    .line 140
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    .line 141
    .local v0, filter:Lcom/alibaba/fastjson/serializer/PropertyPreFilter;
    invoke-interface {v0, p0, p1, p2}, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 142
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Ljava/lang/String;
    .locals 5
    .parameter "serializer"
    .parameter "object"
    .parameter "key"
    .parameter "intValue"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v2

    .line 31
    .local v2, nameFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v2, :cond_0

    .line 32
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 34
    .local v3, propertyValue:Ljava/lang/Byte;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 35
    .local v1, nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    invoke-interface {v1, p1, p2, v3}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 39
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    .end local v3           #propertyValue:Ljava/lang/Byte;
    :cond_0
    return-object p2
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;C)Ljava/lang/String;
    .locals 5
    .parameter "serializer"
    .parameter "object"
    .parameter "key"
    .parameter "intValue"

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v2

    .line 122
    .local v2, nameFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v2, :cond_0

    .line 123
    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 125
    .local v3, propertyValue:Ljava/lang/Character;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 126
    .local v1, nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    invoke-interface {v1, p1, p2, v3}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 130
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    .end local v3           #propertyValue:Ljava/lang/Character;
    :cond_0
    return-object p2
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;D)Ljava/lang/String;
    .locals 5
    .parameter "serializer"
    .parameter "object"
    .parameter "key"
    .parameter "intValue"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v2

    .line 96
    .local v2, nameFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v2, :cond_0

    .line 97
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 99
    .local v3, propertyValue:Ljava/lang/Double;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 100
    .local v1, nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    invoke-interface {v1, p1, p2, v3}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 104
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    .end local v3           #propertyValue:Ljava/lang/Double;
    :cond_0
    return-object p2
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;F)Ljava/lang/String;
    .locals 5
    .parameter "serializer"
    .parameter "object"
    .parameter "key"
    .parameter "intValue"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v2

    .line 83
    .local v2, nameFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v2, :cond_0

    .line 84
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 86
    .local v3, propertyValue:Ljava/lang/Float;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 87
    .local v1, nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    invoke-interface {v1, p1, p2, v3}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 91
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    .end local v3           #propertyValue:Ljava/lang/Float;
    :cond_0
    return-object p2
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "serializer"
    .parameter "object"
    .parameter "key"
    .parameter "intValue"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v2

    .line 57
    .local v2, nameFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v2, :cond_0

    .line 58
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 60
    .local v3, propertyValue:Ljava/lang/Integer;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 61
    .local v1, nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    invoke-interface {v1, p1, p2, v3}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 65
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    .end local v3           #propertyValue:Ljava/lang/Integer;
    :cond_0
    return-object p2
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/String;
    .locals 5
    .parameter "serializer"
    .parameter "object"
    .parameter "key"
    .parameter "intValue"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v2

    .line 70
    .local v2, nameFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v2, :cond_0

    .line 71
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 73
    .local v3, propertyValue:Ljava/lang/Long;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 74
    .local v1, nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    invoke-interface {v1, p1, p2, v3}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 78
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    .end local v3           #propertyValue:Ljava/lang/Long;
    :cond_0
    return-object p2
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "serializer"
    .parameter "object"
    .parameter "key"
    .parameter "propertyValue"

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v2

    .line 20
    .local v2, nameFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v2, :cond_0

    .line 21
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 22
    .local v1, nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    invoke-interface {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 26
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    :cond_0
    return-object p2
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;S)Ljava/lang/String;
    .locals 5
    .parameter "serializer"
    .parameter "object"
    .parameter "key"
    .parameter "intValue"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v2

    .line 44
    .local v2, nameFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v2, :cond_0

    .line 45
    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    .line 47
    .local v3, propertyValue:Ljava/lang/Short;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 48
    .local v1, nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    invoke-interface {v1, p1, p2, v3}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 52
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    .end local v3           #propertyValue:Ljava/lang/Short;
    :cond_0
    return-object p2
.end method

.method public static processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "serializer"
    .parameter "object"
    .parameter "key"
    .parameter "intValue"

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v2

    .line 109
    .local v2, nameFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v2, :cond_0

    .line 110
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 112
    .local v3, propertyValue:Ljava/lang/Boolean;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 113
    .local v1, nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    invoke-interface {v1, p1, p2, v3}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 117
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    .end local v3           #propertyValue:Ljava/lang/Boolean;
    :cond_0
    return-object p2
.end method

.method public static processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "serializer"
    .parameter "object"
    .parameter "key"
    .parameter "propertyValue"

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getValueFiltersDirect()Ljava/util/List;

    move-result-object v2

    .line 9
    .local v2, valueFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    if-eqz v2, :cond_0

    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/ValueFilter;

    .line 11
    .local v1, valueFilter:Lcom/alibaba/fastjson/serializer/ValueFilter;
    invoke-interface {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/ValueFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 15
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #valueFilter:Lcom/alibaba/fastjson/serializer/ValueFilter;
    :cond_0
    return-object p3
.end method
