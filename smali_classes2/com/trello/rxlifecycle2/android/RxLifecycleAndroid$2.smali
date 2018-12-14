.class final Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$2;
.super Ljava/lang/Object;
.source "RxLifecycleAndroid.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/trello/rxlifecycle2/android/FragmentEvent;",
        "Lcom/trello/rxlifecycle2/android/FragmentEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/trello/rxlifecycle2/android/FragmentEvent;)Lcom/trello/rxlifecycle2/android/FragmentEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$3;->$SwitchMap$com$trello$rxlifecycle2$android$FragmentEvent:[I

    invoke-virtual {p1}, Lcom/trello/rxlifecycle2/android/FragmentEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not yet implemented"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :pswitch_0
    new-instance p1, Lcom/trello/rxlifecycle2/OutsideLifecycleException;

    const-string v0, "Cannot bind to Fragment lifecycle when outside of it."

    invoke-direct {p1, v0}, Lcom/trello/rxlifecycle2/OutsideLifecycleException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :pswitch_1
    sget-object p1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->DETACH:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    return-object p1

    .line 140
    :pswitch_2
    sget-object p1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->DESTROY:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    return-object p1

    .line 138
    :pswitch_3
    sget-object p1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->DESTROY_VIEW:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    return-object p1

    .line 136
    :pswitch_4
    sget-object p1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->STOP:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    return-object p1

    .line 134
    :pswitch_5
    sget-object p1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->PAUSE:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    return-object p1

    .line 132
    :pswitch_6
    sget-object p1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->STOP:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    return-object p1

    .line 130
    :pswitch_7
    sget-object p1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->DESTROY_VIEW:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    return-object p1

    .line 128
    :pswitch_8
    sget-object p1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->DESTROY:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    return-object p1

    .line 126
    :pswitch_9
    sget-object p1, Lcom/trello/rxlifecycle2/android/FragmentEvent;->DETACH:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    check-cast p1, Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {p0, p1}, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$2;->apply(Lcom/trello/rxlifecycle2/android/FragmentEvent;)Lcom/trello/rxlifecycle2/android/FragmentEvent;

    move-result-object p1

    return-object p1
.end method
