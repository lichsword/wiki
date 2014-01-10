.class public Landroid/taobao/util/IntHashMap$Entry;
.super Ljava/lang/Object;
.source "IntHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/util/IntHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Entry"
.end annotation


# instance fields
.field protected hash:I

.field protected key:I

.field protected next:Landroid/taobao/util/IntHashMap$Entry;

.field protected value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(IILjava/lang/Object;Landroid/taobao/util/IntHashMap$Entry;)V
    .locals 0
    .parameter "hash"
    .parameter "key"
    .parameter "value"
    .parameter "next"

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput p1, p0, Landroid/taobao/util/IntHashMap$Entry;->hash:I

    .line 349
    iput p2, p0, Landroid/taobao/util/IntHashMap$Entry;->key:I

    .line 350
    iput-object p3, p0, Landroid/taobao/util/IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 351
    iput-object p4, p0, Landroid/taobao/util/IntHashMap$Entry;->next:Landroid/taobao/util/IntHashMap$Entry;

    .line 352
    return-void
.end method
