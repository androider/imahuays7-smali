.class public Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;
.super Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
.source "ListGSYVideoPlayer.java"


# instance fields
.field protected mPlayPosition:I

.field protected mUriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mUriList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mUriList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mUriList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected changeUiToNormal()V
    .locals 4

    .line 184
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToNormal()V

    .line 185
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mHadPlay:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mPlayPosition:I

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mUriList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 187
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mTopContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 189
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 195
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 196
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 197
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 199
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->a()V

    :cond_0
    return-void
.end method

.method public onAutoCompletion()V
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->playNext()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onAutoCompletion()V

    return-void
.end method

.method public onCompletion()V
    .locals 2

    .line 147
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mPlayPosition:I

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mUriList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onCompletion()V

    return-void
.end method

.method public onPrepared()V
    .locals 0

    .line 179
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onPrepared()V

    return-void
.end method

.method public playNext()Z
    .locals 12

    .line 211
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mPlayPosition:I

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mUriList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 212
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mPlayPosition:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mPlayPosition:I

    .line 213
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mUriList:Ljava/util/List;

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mPlayPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shuyu/gsyvideoplayer/d/b;

    const-wide/16 v3, 0x0

    .line 214
    iput-wide v3, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mSaveChangeViewTIme:J

    .line 215
    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mUriList:Ljava/util/List;

    iget-boolean v7, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mCache:Z

    iget v8, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mPlayPosition:I

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mMapHeadData:Ljava/util/Map;

    const/4 v11, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->setUp(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;Z)Z

    .line 216
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/d/b;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/d/b;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->startPlayLogic()V

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareVideo()V
    .locals 2

    .line 167
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->prepareVideo()V

    .line 168
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mHadPlay:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mPlayPosition:I

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mUriList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->setViewShowState(Landroid/view/View;I)V

    .line 170
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    instance-of v0, v0, Lmoe/codeest/enviews/ENDownloadView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mLoadingProgressBar:Landroid/view/View;

    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->a()V

    :cond_0
    return-void
.end method

.method protected resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 135
    move-object v0, p3

    check-cast v0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;

    .line 136
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mUriList:Ljava/util/List;

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mPlayPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shuyu/gsyvideoplayer/d/b;

    .line 137
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/d/b;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/d/b;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    return-void
.end method

.method public setUp(Ljava/util/List;ZI)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/d/b;",
            ">;ZI)Z"
        }
    .end annotation

    .line 56
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->setUp(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public setUp(Ljava/util/List;ZILjava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/d/b;",
            ">;ZI",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 69
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->setUp(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public setUp(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/d/b;",
            ">;ZI",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 83
    invoke-virtual/range {v0 .. v6}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->setUp(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;Z)Z

    move-result p1

    return p1
.end method

.method protected setUp(Ljava/util/List;ZILjava/io/File;Ljava/util/Map;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/d/b;",
            ">;ZI",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mUriList:Ljava/util/List;

    .line 99
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mPlayPosition:I

    .line 100
    iput-object p5, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mMapHeadData:Ljava/util/Map;

    .line 101
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shuyu/gsyvideoplayer/d/b;

    .line 102
    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/d/b;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/d/b;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v2, p2

    move-object v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;Z)Z

    move-result p2

    .line 103
    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/d/b;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 104
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/d/b;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return p2
.end method

.method public startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 1

    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 123
    move-object p2, p1

    check-cast p2, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;

    .line 124
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mUriList:Ljava/util/List;

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mPlayPosition:I

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shuyu/gsyvideoplayer/d/b;

    .line 125
    invoke-virtual {p3}, Lcom/shuyu/gsyvideoplayer/d/b;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object p2, p2, Lcom/shuyu/gsyvideoplayer/video/ListGSYVideoPlayer;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/shuyu/gsyvideoplayer/d/b;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p1
.end method
