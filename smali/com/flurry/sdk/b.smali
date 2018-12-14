.class public Lcom/flurry/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "b"


# instance fields
.field final a:Lcom/flurry/sdk/i;

.field b:Lcom/flurry/sdk/n;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/i;Lcom/flurry/sdk/n;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/i;

    .line 26
    iput-object p2, p0, Lcom/flurry/sdk/b;->b:Lcom/flurry/sdk/n;

    return-void
.end method
