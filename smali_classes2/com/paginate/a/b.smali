.class public interface abstract Lcom/paginate/a/b;
.super Ljava/lang/Object;
.source "LoadingListItemCreator.java"


# static fields
.field public static final a:Lcom/paginate/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/paginate/a/b$1;

    invoke-direct {v0}, Lcom/paginate/a/b$1;-><init>()V

    sput-object v0, Lcom/paginate/a/b;->a:Lcom/paginate/a/b;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end method
