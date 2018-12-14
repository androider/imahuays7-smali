.class Lcom/raizlabs/android/dbflow/structure/b/a/f$3;
.super Ljava/lang/Object;
.source "QueryTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raizlabs/android/dbflow/structure/b/a/f;->a(Lcom/raizlabs/android/dbflow/structure/b/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/raizlabs/android/dbflow/structure/b/a/f;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$3;->b:Lcom/raizlabs/android/dbflow/structure/b/a/f;

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$3;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$3;->b:Lcom/raizlabs/android/dbflow/structure/b/a/f;

    iget-object v0, v0, Lcom/raizlabs/android/dbflow/structure/b/a/f;->d:Lcom/raizlabs/android/dbflow/structure/b/a/f$d;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$3;->b:Lcom/raizlabs/android/dbflow/structure/b/a/f;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/structure/b/a/f$3;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/a/f$d;->a(Lcom/raizlabs/android/dbflow/structure/b/a/f;Ljava/lang/Object;)V

    return-void
.end method
