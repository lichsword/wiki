.class public final enum Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;
.super Ljava/lang/Enum;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/crop/view/HighlightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModifyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

.field public static final enum Grow:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

.field public static final enum Move:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

.field public static final enum None:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 316
    new-instance v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;->None:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    new-instance v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    const-string v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;->Move:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    new-instance v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    const-string v1, "Grow"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;->Grow:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    .line 315
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    sget-object v1, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;->None:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;->Move:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;->Grow:Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;->ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;->ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/alibaba/adi/collie/ui/crop/view/HighlightView$ModifyMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
