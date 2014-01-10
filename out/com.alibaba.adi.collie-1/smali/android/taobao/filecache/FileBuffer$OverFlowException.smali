.class public Landroid/taobao/filecache/FileBuffer$OverFlowException;
.super Ljava/lang/Exception;
.source "FileBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/filecache/FileBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverFlowException"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/filecache/FileBuffer;


# direct methods
.method public constructor <init>(Landroid/taobao/filecache/FileBuffer;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Landroid/taobao/filecache/FileBuffer$OverFlowException;->this$0:Landroid/taobao/filecache/FileBuffer;

    .line 120
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/taobao/filecache/FileBuffer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "detailMessage"

    .prologue
    .line 129
    iput-object p1, p0, Landroid/taobao/filecache/FileBuffer$OverFlowException;->this$0:Landroid/taobao/filecache/FileBuffer;

    .line 130
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/taobao/filecache/FileBuffer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 124
    iput-object p1, p0, Landroid/taobao/filecache/FileBuffer$OverFlowException;->this$0:Landroid/taobao/filecache/FileBuffer;

    .line 125
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/taobao/filecache/FileBuffer;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter "throwable"

    .prologue
    .line 134
    iput-object p1, p0, Landroid/taobao/filecache/FileBuffer$OverFlowException;->this$0:Landroid/taobao/filecache/FileBuffer;

    .line 135
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 137
    return-void
.end method
