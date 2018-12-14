.class final Lcom/flurry/sdk/ar$a$2;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ar$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ar$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ar$a;Ljava/io/InputStream;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/flurry/sdk/ar$a$2;->a:Lcom/flurry/sdk/ar$a;

    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method
