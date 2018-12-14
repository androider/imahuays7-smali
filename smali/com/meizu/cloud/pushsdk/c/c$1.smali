.class Lcom/meizu/cloud/pushsdk/c/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/cloud/pushsdk/c/c;->a(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/cloud/pushsdk/c/c;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/c/c$1;->a:Lcom/meizu/cloud/pushsdk/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/c$1;->a:Lcom/meizu/cloud/pushsdk/c/c;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/c/c;->a(Lcom/meizu/cloud/pushsdk/c/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
