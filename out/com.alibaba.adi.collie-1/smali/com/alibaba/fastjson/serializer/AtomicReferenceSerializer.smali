.class public Lcom/alibaba/fastjson/serializer/AtomicReferenceSerializer;
.super Ljava/lang/Object;
.source "AtomicReferenceSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/AtomicReferenceSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/alibaba/fastjson/serializer/AtomicReferenceSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AtomicReferenceSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AtomicReferenceSerializer;->instance:Lcom/alibaba/fastjson/serializer/AtomicReferenceSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 2
    .parameter "serializer"
    .parameter "object"
    .parameter "fieldName"
    .parameter "fieldType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p2

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    .local v0, val:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 33
    return-void
.end method
