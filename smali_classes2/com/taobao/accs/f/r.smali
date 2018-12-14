.class Lcom/taobao/accs/f/r;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/data/Message;

.field final synthetic b:Z

.field final synthetic c:Lcom/taobao/accs/f/q;


# direct methods
.method constructor <init>(Lcom/taobao/accs/f/q;Lcom/taobao/accs/data/Message;Z)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/taobao/accs/f/r;->c:Lcom/taobao/accs/f/q;

    iput-object p2, p0, Lcom/taobao/accs/f/r;->a:Lcom/taobao/accs/data/Message;

    iput-boolean p3, p0, Lcom/taobao/accs/f/r;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 191
    iget-object v0, p0, Lcom/taobao/accs/f/r;->c:Lcom/taobao/accs/f/q;

    invoke-static {v0}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/f/r;->c:Lcom/taobao/accs/f/q;

    iget-object v2, p0, Lcom/taobao/accs/f/r;->a:Lcom/taobao/accs/data/Message;

    invoke-static {v1, v2}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;Lcom/taobao/accs/data/Message;)V

    .line 193
    iget-object v1, p0, Lcom/taobao/accs/f/r;->c:Lcom/taobao/accs/f/q;

    invoke-static {v1}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/taobao/accs/f/r;->c:Lcom/taobao/accs/f/q;

    invoke-static {v1}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/f/r;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/taobao/accs/f/r;->c:Lcom/taobao/accs/f/q;

    invoke-static {v1}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/data/Message;

    .line 197
    iget-object v2, p0, Lcom/taobao/accs/f/r;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/taobao/accs/f/r;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/taobao/accs/f/r;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 203
    iget-boolean v1, v1, Lcom/taobao/accs/data/Message;->d:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/taobao/accs/f/r;->a:Lcom/taobao/accs/data/Message;

    iget-boolean v1, v1, Lcom/taobao/accs/data/Message;->d:Z

    if-eqz v1, :cond_4

    .line 204
    iget-object v1, p0, Lcom/taobao/accs/f/r;->c:Lcom/taobao/accs/f/q;

    invoke-static {v1}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 205
    iget-object v1, p0, Lcom/taobao/accs/f/r;->c:Lcom/taobao/accs/f/q;

    invoke-static {v1}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/f/r;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 208
    :cond_2
    iget-object v1, p0, Lcom/taobao/accs/f/r;->c:Lcom/taobao/accs/f/q;

    invoke-static {v1}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/f/r;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 198
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/taobao/accs/f/r;->c:Lcom/taobao/accs/f/q;

    invoke-static {v2}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/f/r;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 199
    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 200
    iget-object v1, p0, Lcom/taobao/accs/f/r;->c:Lcom/taobao/accs/f/q;

    invoke-static {v1}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 212
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/taobao/accs/f/r;->b:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/taobao/accs/f/r;->c:Lcom/taobao/accs/f/q;

    invoke-static {v1}, Lcom/taobao/accs/f/q;->b(Lcom/taobao/accs/f/q;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 214
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/taobao/accs/f/r;->c:Lcom/taobao/accs/f/q;

    invoke-static {v1}, Lcom/taobao/accs/f/q;->a(Lcom/taobao/accs/f/q;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 216
    :try_start_2
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 219
    :cond_6
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
