.class Lorg/eclipse/jetty/security/PropertyUserStore$2;
.super Ljava/lang/Object;
.source "PropertyUserStore.java"

# interfaces
.implements Lorg/eclipse/jetty/util/Scanner$BulkListener;


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

    .line 257
    iput-object p1, p0, Lorg/eclipse/jetty/security/PropertyUserStore$2;->this$0:Lorg/eclipse/jetty/security/PropertyUserStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filesChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 264
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 266
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p1

    .line 267
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore$2;->this$0:Lorg/eclipse/jetty/security/PropertyUserStore;

    invoke-static {v0}, Lorg/eclipse/jetty/security/PropertyUserStore;->access$000(Lorg/eclipse/jetty/security/PropertyUserStore;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 268
    iget-object p1, p0, Lorg/eclipse/jetty/security/PropertyUserStore$2;->this$0:Lorg/eclipse/jetty/security/PropertyUserStore;

    invoke-static {p1}, Lorg/eclipse/jetty/security/PropertyUserStore;->access$100(Lorg/eclipse/jetty/security/PropertyUserStore;)V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PropertyUserStore$Scanner"

    return-object v0
.end method
