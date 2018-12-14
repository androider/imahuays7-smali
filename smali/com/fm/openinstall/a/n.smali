.class Lcom/fm/openinstall/a/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/fm/openinstall/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fm/openinstall/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fm/openinstall/a/f;-><init>(Lcom/fm/openinstall/a/g;)V

    sput-object v0, Lcom/fm/openinstall/a/n;->a:Lcom/fm/openinstall/a/f;

    return-void
.end method

.method static synthetic a()Lcom/fm/openinstall/a/f;
    .locals 1

    sget-object v0, Lcom/fm/openinstall/a/n;->a:Lcom/fm/openinstall/a/f;

    return-object v0
.end method
