.class public Lcom/fm/openinstall/f/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fm/openinstall/f/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/fm/openinstall/f/c;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Lcom/fm/openinstall/f/c;

    invoke-direct {v0, p0}, Lcom/fm/openinstall/f/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
