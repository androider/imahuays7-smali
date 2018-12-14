.class Lorg/eclipse/jetty/security/PropertyUserStore$1;
.super Ljava/lang/Object;
.source "PropertyUserStore.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/security/PropertyUserStore;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/security/PropertyUserStore;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/security/PropertyUserStore;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lorg/eclipse/jetty/security/PropertyUserStore$1;->this$0:Lorg/eclipse/jetty/security/PropertyUserStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 238
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 241
    :try_start_0
    iget-object p2, p0, Lorg/eclipse/jetty/security/PropertyUserStore$1;->this$0:Lorg/eclipse/jetty/security/PropertyUserStore;

    invoke-virtual {p2}, Lorg/eclipse/jetty/security/PropertyUserStore;->getConfigResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return p1

    :catch_0
    return p1
.end method
