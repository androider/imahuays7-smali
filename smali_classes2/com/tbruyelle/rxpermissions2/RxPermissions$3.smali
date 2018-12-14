.class Lcom/tbruyelle/rxpermissions2/RxPermissions$3;
.super Ljava/lang/Object;
.source "RxPermissions.java"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions2/RxPermissions;->ensureEachCombined([Ljava/lang/String;)Lio/reactivex/ObservableTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableTransformer<",
        "TT;",
        "Lcom/tbruyelle/rxpermissions2/Permission;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tbruyelle/rxpermissions2/RxPermissions;

.field final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions2/RxPermissions;[Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions$3;->this$0:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    iput-object p2, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions$3;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;)",
            "Lio/reactivex/ObservableSource<",
            "Lcom/tbruyelle/rxpermissions2/Permission;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions$3;->this$0:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions$3;->val$permissions:[Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->access$000(Lcom/tbruyelle/rxpermissions2/RxPermissions;Lio/reactivex/Observable;[Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions$3;->val$permissions:[Ljava/lang/String;

    array-length v0, v0

    .line 136
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->buffer(I)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions$3$1;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions$3$1;-><init>(Lcom/tbruyelle/rxpermissions2/RxPermissions$3;)V

    .line 137
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
