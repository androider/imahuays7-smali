.class public abstract Lcom/paginate/a;
.super Ljava/lang/Object;
.source "Paginate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/paginate/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView;Lcom/paginate/a$a;)Lcom/paginate/a/d$a;
    .locals 1

    .line 60
    new-instance v0, Lcom/paginate/a/d$a;

    invoke-direct {v0, p0, p1}, Lcom/paginate/a/d$a;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/paginate/a$a;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Z)V
.end method
