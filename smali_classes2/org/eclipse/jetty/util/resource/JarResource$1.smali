.class Lorg/eclipse/jetty/util/resource/JarResource$1;
.super Ljava/io/FilterInputStream;
.source "JarResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/util/resource/JarResource;->getInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/util/resource/JarResource;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/util/resource/JarResource;Ljava/io/InputStream;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lorg/eclipse/jetty/util/resource/JarResource$1;->this$0:Lorg/eclipse/jetty/util/resource/JarResource;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-static {}, Lorg/eclipse/jetty/util/IO;->getClosedStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/JarResource$1;->in:Ljava/io/InputStream;

    return-void
.end method
