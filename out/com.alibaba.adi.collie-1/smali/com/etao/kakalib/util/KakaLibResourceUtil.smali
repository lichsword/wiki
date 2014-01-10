.class public Lcom/etao/kakalib/util/KakaLibResourceUtil;
.super Ljava/lang/Object;
.source "KakaLibResourceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimByName(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "currentId"

    .prologue
    .line 33
    const-string v0, "anim"

    invoke-static {p0, v0, p1, p2}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getColorByName(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "currentId"

    .prologue
    .line 37
    const-string v0, "color"

    invoke-static {p0, v0, p1, p2}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "currentId"

    .prologue
    .line 57
    const-string v0, "drawable"

    invoke-static {p0, v0, p1, p2}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getIdByName(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "currentId"

    .prologue
    .line 29
    const-string v0, "id"

    invoke-static {p0, v0, p1, p2}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "currentId"

    .prologue
    .line 41
    const-string v0, "layout"

    invoke-static {p0, v0, p1, p2}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRawIdByName(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "currentId"

    .prologue
    .line 45
    const-string v0, "raw"

    invoke-static {p0, v0, p1, p2}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .parameter "context"
    .parameter "className"
    .parameter "name"
    .parameter "currentId"

    .prologue
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v1, p2, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 15
    .local v0, identifier:I
    if-nez v0, :cond_0

    .line 16
    const-string v1, "Res"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "res:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 17
    const-string v3, " not found,put check the res folder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-boolean v1, Lcom/etao/kakalib/util/KaKaLibConfig;->isReleaseMode:Z

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "res:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 20
    const-string v3, " not found,put check the res folder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_0
    return v0
.end method

.method public static getStringIdByName(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "currentId"

    .prologue
    .line 53
    const-string v0, "string"

    invoke-static {p0, v0, p1, p2}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getStyleableIdByName(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "currentId"

    .prologue
    .line 49
    const-string v0, "styleable"

    invoke-static {p0, v0, p1, p2}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
