.class public Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;
.super Ljava/lang/Object;
.source "DbTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/util/db/DbTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DbColumnDef"
.end annotation


# instance fields
.field private column:Ljava/lang/String;

.field private defaultValue:Ljava/lang/String;

.field private introducedVersion:I

.field final synthetic this$0:Lcom/alibaba/adi/collie/util/db/DbTable;

.field private type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/alibaba/adi/collie/util/db/DbTable;)V
    .locals 1
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;->this$0:Lcom/alibaba/adi/collie/util/db/DbTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;->defaultValue:Ljava/lang/String;

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;->introducedVersion:I

    return-void
.end method


# virtual methods
.method public getColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;->column:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getIntroducedVersion()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;->introducedVersion:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setColumn(Ljava/lang/String;)V
    .locals 0
    .parameter "column"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;->column:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0
    .parameter "defaultValue"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;->defaultValue:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setIntroducedVersion(I)V
    .locals 0
    .parameter "introducedVersion"

    .prologue
    .line 266
    iput p1, p0, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;->introducedVersion:I

    .line 267
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;->type:Ljava/lang/String;

    .line 251
    return-void
.end method
