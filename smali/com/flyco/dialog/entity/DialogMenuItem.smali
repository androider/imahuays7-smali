.class public Lcom/flyco/dialog/entity/DialogMenuItem;
.super Ljava/lang/Object;
.source "DialogMenuItem.java"


# instance fields
.field public mOperName:Ljava/lang/String;

.field public mResId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/flyco/dialog/entity/DialogMenuItem;->mOperName:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/flyco/dialog/entity/DialogMenuItem;->mResId:I

    return-void
.end method
