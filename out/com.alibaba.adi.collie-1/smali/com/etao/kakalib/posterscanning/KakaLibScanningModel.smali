.class public final Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;
.super Ljava/lang/Object;
.source "KakaLibScanningModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etao/kakalib/posterscanning/KakaLibScanningModel$ScanningType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6c372efd1998403bL


# instance fields
.field public actionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etao/kakalib/posterscanning/KakaLibScanningActionModel;",
            ">;"
        }
    .end annotation
.end field

.field public cardNumber:I

.field public imgId:Ljava/lang/String;

.field public json:Ljava/lang/String;

.field public shouldUnzipFromJson:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->shouldUnzipFromJson:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "leJson"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->shouldUnzipFromJson:Z

    .line 34
    iput-object p1, p0, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;->json:Ljava/lang/String;

    .line 35
    return-void
.end method
