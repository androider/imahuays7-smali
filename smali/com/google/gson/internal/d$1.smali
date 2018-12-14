.class Lcom/google/gson/internal/d$1;
.super Lcom/google/gson/q;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/d;->a(Lcom/google/gson/e;Lcom/google/gson/b/a;)Lcom/google/gson/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/google/gson/e;

.field final synthetic d:Lcom/google/gson/b/a;

.field final synthetic e:Lcom/google/gson/internal/d;

.field private f:Lcom/google/gson/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/q<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gson/internal/d;ZZLcom/google/gson/e;Lcom/google/gson/b/a;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/google/gson/internal/d$1;->e:Lcom/google/gson/internal/d;

    iput-boolean p2, p0, Lcom/google/gson/internal/d$1;->a:Z

    iput-boolean p3, p0, Lcom/google/gson/internal/d$1;->b:Z

    iput-object p4, p0, Lcom/google/gson/internal/d$1;->c:Lcom/google/gson/e;

    iput-object p5, p0, Lcom/google/gson/internal/d$1;->d:Lcom/google/gson/b/a;

    invoke-direct {p0}, Lcom/google/gson/q;-><init>()V

    return-void
.end method

.method private b()Lcom/google/gson/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/q<",
            "TT;>;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/google/gson/internal/d$1;->f:Lcom/google/gson/q;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/d$1;->c:Lcom/google/gson/e;

    iget-object v1, p0, Lcom/google/gson/internal/d$1;->e:Lcom/google/gson/internal/d;

    iget-object v2, p0, Lcom/google/gson/internal/d$1;->d:Lcom/google/gson/b/a;

    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/e;->a(Lcom/google/gson/r;Lcom/google/gson/b/a;)Lcom/google/gson/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/d$1;->f:Lcom/google/gson/q;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-boolean v0, p0, Lcom/google/gson/internal/d$1;->b:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/internal/d$1;->b()Lcom/google/gson/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/q;->a(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-boolean v0, p0, Lcom/google/gson/internal/d$1;->a:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/internal/d$1;->b()Lcom/google/gson/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/q;->b(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
