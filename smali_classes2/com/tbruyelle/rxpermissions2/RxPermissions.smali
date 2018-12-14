.class public Lcom/tbruyelle/rxpermissions2/RxPermissions;
.super Ljava/lang/Object;
.source "RxPermissions.java"


# static fields
.field static final TAG:Ljava/lang/String; = "RxPermissions"

.field static final TRIGGER:Ljava/lang/Object;


# instance fields
.field mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;->TRIGGER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->getRxPermissionsFragment(Landroid/app/Activity;)Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    return-void
.end method

.method static synthetic access$000(Lcom/tbruyelle/rxpermissions2/RxPermissions;Lio/reactivex/Observable;[Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request(Lio/reactivex/Observable;[Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/tbruyelle/rxpermissions2/RxPermissions;[Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->requestImplementation([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private findRxPermissionsFragment(Landroid/app/Activity;)Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;
    .locals 1

    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "RxPermissions"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    return-object p1
.end method

.method private getRxPermissionsFragment(Landroid/app/Activity;)Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;
    .locals 3

    .line 48
    invoke-direct {p0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->findRxPermissionsFragment(Landroid/app/Activity;)Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 51
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    invoke-direct {v0}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "RxPermissions"

    .line 55
    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 57
    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-object v0
.end method

.method private oneOf(Lio/reactivex/Observable;Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "*>;",
            "Lio/reactivex/Observable<",
            "*>;)",
            "Lio/reactivex/Observable<",
            "*>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 200
    sget-object p1, Lcom/tbruyelle/rxpermissions2/RxPermissions;->TRIGGER:Ljava/lang/Object;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 202
    :cond_0
    invoke-static {p1, p2}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private varargs pending([Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "*>;"
        }
    .end annotation

    .line 190
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 191
    iget-object v3, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    invoke-virtual {v3, v2}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->containsByPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_1
    sget-object p1, Lcom/tbruyelle/rxpermissions2/RxPermissions;->TRIGGER:Ljava/lang/Object;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private varargs request(Lio/reactivex/Observable;[Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "*>;[",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/tbruyelle/rxpermissions2/Permission;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 177
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-direct {p0, p2}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->pending([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->oneOf(Lio/reactivex/Observable;Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions$4;

    invoke-direct {v0, p0, p2}, Lcom/tbruyelle/rxpermissions2/RxPermissions$4;-><init>(Lcom/tbruyelle/rxpermissions2/RxPermissions;[Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 178
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "RxPermissions.request/requestEach requires at least one input permission"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private varargs requestImplementation([Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/tbruyelle/rxpermissions2/Permission;",
            ">;"
        }
    .end annotation

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    .line 213
    iget-object v6, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requesting permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->log(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, v5}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->isGranted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    new-instance v6, Lcom/tbruyelle/rxpermissions2/Permission;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v7, v3}, Lcom/tbruyelle/rxpermissions2/Permission;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v6}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    :cond_0
    invoke-virtual {p0, v5}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->isRevoked(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 223
    new-instance v6, Lcom/tbruyelle/rxpermissions2/Permission;

    invoke-direct {v6, v5, v3, v3}, Lcom/tbruyelle/rxpermissions2/Permission;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v6}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    :cond_1
    iget-object v6, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    invoke-virtual {v6, v5}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->getSubjectByPermission(Ljava/lang/String;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v6

    if-nez v6, :cond_2

    .line 230
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v6

    .line 232
    iget-object v7, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    invoke-virtual {v7, v5, v6}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->setSubjectForPermission(Ljava/lang/String;Lio/reactivex/subjects/PublishSubject;)Lio/reactivex/subjects/PublishSubject;

    .line 235
    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 238
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 239
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 240
    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->requestPermissionsFromFragment([Ljava/lang/String;)V

    .line 242
    :cond_4
    invoke-static {v0}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private varargs shouldShowRequestPermissionRationaleImplementation(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 267
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 268
    invoke-virtual {p0, v3}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->isGranted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v3}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public varargs ensure([Ljava/lang/String;)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableTransformer<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions$1;

    invoke-direct {v0, p0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissions$1;-><init>(Lcom/tbruyelle/rxpermissions2/RxPermissions;[Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs ensureEach([Ljava/lang/String;)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableTransformer<",
            "TT;",
            "Lcom/tbruyelle/rxpermissions2/Permission;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions$2;

    invoke-direct {v0, p0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissions$2;-><init>(Lcom/tbruyelle/rxpermissions2/RxPermissions;[Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs ensureEachCombined([Ljava/lang/String;)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableTransformer<",
            "TT;",
            "Lcom/tbruyelle/rxpermissions2/Permission;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions$3;

    invoke-direct {v0, p0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissions$3;-><init>(Lcom/tbruyelle/rxpermissions2/RxPermissions;[Ljava/lang/String;)V

    return-object v0
.end method

.method public isGranted(Ljava/lang/String;)Z
    .locals 1

    .line 288
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    invoke-virtual {v0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->isGranted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method isMarshmallow()Z
    .locals 2

    .line 302
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRevoked(Ljava/lang/String;)Z
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    invoke-virtual {v0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->isRevoked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    array-length v1, p1

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->onRequestPermissionsResult([Ljava/lang/String;[I[Z)V

    return-void
.end method

.method public varargs request([Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 156
    sget-object v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;->TRIGGER:Ljava/lang/Object;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->ensure([Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public varargs requestEach([Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/tbruyelle/rxpermissions2/Permission;",
            ">;"
        }
    .end annotation

    .line 165
    sget-object v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;->TRIGGER:Ljava/lang/Object;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->ensureEach([Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public varargs requestEachCombined([Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/tbruyelle/rxpermissions2/Permission;",
            ">;"
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;->TRIGGER:Ljava/lang/Object;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->ensureEachCombined([Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method requestPermissionsFromFragment([Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPermissionsFromFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->log(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    invoke-virtual {v0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->requestPermissions([Ljava/lang/String;)V

    return-void
.end method

.method public setLogging(Z)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions;->mRxPermissionsFragment:Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;

    invoke-virtual {v0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissionsFragment;->setLogging(Z)V

    return-void
.end method

.method public varargs shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->isMarshmallow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 260
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 262
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->shouldShowRequestPermissionRationaleImplementation(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
