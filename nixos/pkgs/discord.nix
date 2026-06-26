{ pkgs, inputs, ... }:

{
  imports = [
    inputs.nixcord.nixosModules.nixcord
  ];

  programs.nixcord = {
    # enable equicord
    enable = true;
    user = "hayden";
    discord = {
      equicord.enable = true;
      vencord.enable = false;
      branch = "canary";
    };
    # theming
    quickCss = "/* css goes here */";
    config = {
      useQuickCss = true;
      themeLinks = [
        "https://dom1torii.github.io/discord16/src/discord16-catppuccin-macchiato.theme.css"
      ];
      enabledThemeLinks = [
        "https://raw.githubusercontent.com/refact0r/midnight-discord/refs/heads/master/themes/flavors/midnight-catppuccin-macchiato.theme.css"
      ];
      frameless = false;
      # other configs
      autoUpdate = true;
      autoUpdateNotification = true;
      ## plugins ##
      plugins = {
        ###########################
        ## shared plugin options ##
        ###########################
        accountPanelServerProfile = {
          enable = true;
          prioritizeServerProfile = false;
        };
        alwaysAnimate = {
          enable = false;
          icons = true;
          nameplates = true;
          roleGradients = true;
          serverBanners = true;
          statusEmojis = true;
        };
        appleMusicRichPresence = {
          enable = false;
          activityType = 2;
          detailsString = "{name}";
          enableButtons = true;
          enableTimestamps = true;
          largeImageType = "Album";
          largeTextString = "{album}";
          nameString = "Apple Music";
          refreshInterval = 5.0;
          smallImageType = "Artist";
          smallTextString = "{artist} · {album}";
          statusDisplayType = "off";
        };
        betterGifAltText = {
          enable = false;
        };
        betterRoleContext = {
          enable = false;
          roleIconFileFormat = "png";
        };
        betterRoleDot = {
          enable = false;
          bothStyles = true;
          copyRoleColorInProfilePopout = false;
        };
        betterSessions = {
          enable = true;
          backgroundCheck = false;
          checkInterval = 20;
        };
        betterSettings = {
          enable = true;
          disableFade = true;
          eagerLoad = true;
          organizeMenu = true;
        };
        betterUploadButton = {
          enable = false;
        };
        biggerStreamPreview = {
          enable = false;
        };
        characterCounter = {
          enable = false;
          colorEffects = true;
        };
        clearUrls = {
          enable = true;
        };
        clientTheme = {
          enable = false;
          color = "313338";
        };
        colorSighted = {
          enable = false;
        };
        consoleJanitor = {
          enable = false;
          allowLevel = {
            debug = false;
            error = true;
            info = false;
            log = false;
            trace = false;
            warn = false;
          };
          disableLoggers = false;
          disableSpotifyLogger = true;
          whitelistedLoggers = "GatewaySocket; Routing/Utils";
        };
        consoleShortcuts = {
          enable = false;
        };
        copyEmojiMarkdown = {
          enable = false;
          copyUnicode = true;
        };
        copyFileContents = {
          enable = false;
        };
        copyStickerLinks = {
          enable = false;
        };
        copyUserUrls = {
          enable = false;
        };
        crashHandler = {
          enable = true;
          attemptToNavigateToHome = false;
          attemptToPreventCrashes = true;
        };
        customCommands = {
          enable = false;
          tagsList = {};
        };
        customIdle = {
          enable = false;
          idleTimeout = 10.0;
          remainInIdle = true;
        };
        customRpc = {
          enable = true;
          type = 3;
          timestampMode = 2;
          appName = "Heartstopper";
          details = "HEARTSTOPPER FOREVER !!!";
          state = "=========MY LOCAL TIME==========";
          detailsUrl = "https://www.netflix.com/de-en/title/82040750";
          stateUrl = "https://time.is/Germany";
          imageBig = "";
          imageBigTooltip = "";
          imageSmall = "";
          imageSmallTooltip = "";
          appId = "1497607860555747409";
          streamLink = "";
          buttonOneText = "My Discord Server";
          buttonOneUrl = "https://discord.gg/BhdQUNRP8Y";
          buttonTwoText = "My GitHub Profile";
          buttonTwoUrl = "https://github.com/hayden-xyz";
        };
        dearrow = {
          enable = false;
          dearrowByDefault = true;
          hideButton = false;
          replaceElements = 0;
        };
        decor = {
          enable = false;
          agreedToGuidelines = true;
          baseUrl = "https://decor.fieryflames.dev";
        };
        disableCallIdle = {
          enable = true;
        };
        disableDeepLinks = {
          enable = false;
        };
        dontRoundMyTimestamps = {
          enable = false;
        };
        expressionCloner = {
          enable = true;
        };
        f8Break = {
          enable = false;
        };
        fakeNitro = {
          enable = false;
          disableEmbedPermissionCheck = false;
          emojiSize = 48.0;
          enableEmojiBypass = true;
          enableStickerBypass = true;
          enableStreamQualityBypass = true;
          hyperLinkText = "{{NAME}}";
          stickerSize = 160.0;
          transformCompoundSentence = false;
          transformEmojis = true;
          transformStickers = true;
          useEmojiHyperLinks = true;
          useStickerHyperLinks = true;
        };
        fakeProfileThemes = {
          enable = false;
          nitroFirst = true;
        };
        favoriteGifSearch = {
          enable = false;
          searchOption = "hostandpath";
        };
        fixCodeblockGap = {
          enable = false;
        };
        fixImagesQuality = {
          enable = true;
          originalImagesInChat = false;
        };
        fixSpotifyEmbeds = {
          enable = true;
          volume = 10.0;
        };
        fixYoutubeEmbeds = {
          enable = true;
          youtubeDescription = false;
        };
        forceOwnerCrown = {
          enable = true;
        };
        friendInvites = {
          enable = false;
        };
        friendsSince = {
          enable = true;
        };
        fullSearchContext = {
          enable = false;
        };
        fullUserInChatbox = {
          enable = true;
        };
        gameActivityToggle = {
          enable = false;
          location = "PANEL";
          oldIcon = false;
        };
        gifPaste = {
          enable = false;
        };
        greetStickerPicker = {
          enable = true;
          greetMode = "Greet";
          multiGreetChoices = [];
          unholyMultiGreetEnabled = false;
        };
        hideMedia = {
          enable = false;
        };
        ignoreActivities = {
          enable = false;
          idsList = "";
          ignoreCompeting = false;
          ignoredActivities = [];
          ignoreListening = false;
          ignorePlaying = false;
          ignoreStreaming = false;
          listMode = 0;
        };
        iLoveSpam = {
          enable = false;
        };
        imageFilename = {
          enable = false;
          showFullUrl = false;
        };
        imageLink = {
          enable = false;
        };
        imageZoom = {
          enable = false;
          invertScroll = true;
          nearestNeighbour = false;
          saveZoomValues = true;
          size = 100.0;
          square = false;
          zoom = 2.0;
          zoomSpeed = 0.5;
        };
        implicitRelationships = {
          enable = false;
          sortByAffinity = true;
        };
        ircColors = {
          enable = false;
          applyColorOnlyInDms = false;
          applyColorOnlyToUsersWithoutColor = false;
          lightness = 70;
          memberListColors = true;
        };
        keepCurrentChannel = {
          enable = false;
        };
        lastFmRichPresence = {
          enable = false;
          apiKey = null;
          clickableLinks = true;
          hideWithActivity = false;
          hideWithSpotify = true;
          missingArt = "lastfmLogo";
          nameFormat = "status-name";
          shareUsername = false;
          showAlbumCover = true;
          showLastFmLogo = true;
          statusDisplayType = "artist";
          statusName = "";
          useListeningStatus = false;
          username = null;
        };
        loadingQuotes = {
          enable = false;
          additionalQuotes = "";
          additionalQuotesDelimiter = "|";
          enableDiscordPresetQuotes = false;
          enablePluginPresetQuotes = true;
          replaceEvents = true;
        };
        memberCount = {
          enable = true;
          memberList = true;
          toolTip = true;
          voiceActivity = true;
        };
        mentionAvatars = {
          enable = true;
          showAtSymbol = true;
        };
        messageLatency = {
          enable = false;
          detectDiscordKotlin = true;
          ignoreSelf = false;
          latency = 2;
          showMillis = false;
        };
        messageLinkEmbeds = {
          enable = true;
          automodEmbeds = "never";
          idList = "";
          listMode = "blacklist";
          messageBackgroundColor = false;
        };
        mutualGroupDms = {
          enable = true;
        };
        noDevtoolsWarning = {
          enable = true;
        };
        noF1 = {
          enable = true;
        };
        noMaskedUrlPaste = {
          enable = false;
        };
        noMiddleClickPaste = {
          enable = false;
        };
        noMosaic = {
          enable = false;
          inlineVideo = true;
        };
        noOnboardingDelay = {
          enable = false;
        };
        noPendingCount = {
          enable = false;
          hideFriendRequestsCount = true;
          hideMessageRequestsCount = true;
          hidePremiumOffersCount = true;
        };
        noProfileThemes = {
          enable = false;
        };
        noReplyMention = {
          enable = false;
          inverseShiftReply = false;
          roleList = "";
          shouldPingListed = true;
          userList = "";
        };
        noServerEmojis = {
          enable = false;
          shownEmojis = "onlyUnicode";
        };
        noSystemBadge = {
          enable = false;
        };
        notificationVolume = {
          enable = false;
          notificationVolume = 100.0;
        };
        noTypingAnimation = {
          enable = true;
        };
        noUnblockToJump = {
          enable = false;
        };
        overrideForumDefaults = {
          enable = false;
          defaultLayout = 1;
          defaultSortOrder = 0;
        };
        pauseInvitesForever = {
          enable = true;
        };
        permissionFreeWill = {
          enable = false;
          lockout = true;
          onboarding = true;
        };
        permissionsViewer = {
          enable = true;
          permissionsSortOrder = 0;
        };
        petpet = {
          enable = true;
        };
        pictureInPicture = {
          enable = true;
          loop = true;
        };
        pinDms = {
          enable = false;
          canCollapseDmSection = false;
          dmSectionCollapsed = false;
          pinOrder = 0;
          userBasedCategoryList = {};
        };
        plainFolderIcon = {
          enable = true;
        };
        previewMessage = {
          enable = false;
        };
        quickMention = {
          enable = true;
        };
        quickReply = {
          enable = true;
          ignoreBlockedAndIgnored = true;
          shouldMention = 2;
        };
        reactErrorDecoder = {
          enable = false;
        };
        readAllNotificationsButton = {
          enable = true;
        };
        relationshipNotifier = {
          enable = false;
          friendRequestCancels = true;
          friends = true;
          groups = true;
          notices = false;
          offlineRemovals = true;
          servers = true;
        };
        replaceGoogleSearch = {
          enable = false;
          customEngineName = null;
          customEngineUrl = null;
          replacementEngine = "off";
        };
        replyTimestamp = {
          enable = false;
        };
        revealAllSpoilers = {
          enable = false;
        };
        reverseImageSearch = {
          enable = true;
        };
        roleColorEverywhere = {
          enable = false;
          chatMentions = true;
          colorChatMessages = false;
          memberList = true;
          messageSaturation = 30.0;
          pollResults = true;
          reactorsList = true;
          voiceUsers = true;
        };
        secretRingToneEnabler = {
          enable = false;
          onlySnow = false;
        };
        sendTimestamps = {
          enable = false;
          replaceMessageContents = true;
        };
        serverListIndicators = {
          enable = false;
          mode = 2;
          useCompact = false;
        };
        shikiCodeblocks = {
          enable = true;
          bgOpacity = 100.0;
          customTheme = null;
          theme = "https://raw.githubusercontent.com/shikijs/textmate-grammars-themes/bc5436518111d87ea58eb56d97b3f9bec30e6b83/packages/tm-themes/themes/catppuccin-macchiato.json";
          tryHljs = "SECONDARY";
          useDevIcon = "GREYSCALE";
        };
        showAllMessageButtons = {
          enable = false;
          noQuickReacts = true;
          noShiftDelete = true;
          noShiftPin = true;
        };
        showConnections = {
          enable = false;
          iconSize = 32;
          iconSpacing = 1;
        };
        showHiddenThings = {
          enable = false;
          showInvitesPaused = true;
          showModView = true;
          showTimeouts = true;
        };
        showTimeoutDuration = {
          enable = false;
          displayStyle = "ssalggnikool";
        };
        silentMessageToggle = {
          enable = false;
          autoDisable = true;
          persistState = "none";
        };
        spotifyCrack = {
          enable = true;
          keepSpotifyActivityOnIdle = false;
          noSpotifyAutoPause = true;
        };
        spotifyShareCommands = {
          enable = false;
        };
        startupTimings = {
          enable = false;
        };
        stickerPaste = {
          enable = false;
        };
        streamerModeOnStream = {
          enable = false;
        };
        summaries = {
          enable = false;
          summaryExpiryThresholdDays = 3.0;
        };
        superReactionTweaks = {
          enable = false;
          superReactByDefault = true;
          superReactionPlayingLimit = 20.0;
          unlimitedSuperReactionPlaying = false;
        };
        themeAttributes = {
          enable = false;
        };
        translate = {
          enable = false;
          autoTranslate = false;
          deeplApiKey = "";
          dismissedAutoTranslateAlert = false;
          kagiSession = "";
          receivedInput = "auto";
          receivedOutput = "en";
          sentInput = "auto";
          service = "google";
          shavian = true;
          showAutoTranslateTooltip = true;
          sitelen = true;
          target = "en";
          toki = true;
        };
        unindent = {
          enable = false;
        };
        unlockedAvatarZoom = {
          enable = false;
          zoomMultiplier = 4.0;
        };
        unsuppressEmbeds = {
          enable = false;
        };
        userMessagesPronouns = {
          enable = true;
          pronounsFormat = "LOWERCASE";
          showSelf = true;
        };
        userVoiceShow = {
          enable = false;
          showInMemberList = true;
          showInMessages = true;
          showInUserProfileModal = true;
        };
        usrbg = {
          enable = false;
          nitroFirst = true;
          voiceBackground = true;
        };
        validReply = {
          enable = true;
        };
        validUser = {
          enable = true;
        };
        vcNarrator = {
          enable = false;
          deafenMessage = "{{USER}} deafened";
          joinMessage = "{{USER}} joined";
          latinOnly = false;
          leaveMessage = "{{USER}} left";
          moveMessage = "{{USER}} moved to {{CHANNEL}}";
          muteMessage = "{{USER}} muted";
          rate = 1.0;
          sayOwnName = false;
          undeafenMessage = "{{USER}} undeafened";
          unmuteMessage = "{{USER}} unmuted";
          voice = null;
          volume = 1.0;
        };
        viewIcons = {
          enable = false;
          format = "png";
          imgSize = "1024";
        };
        viewRaw = {
          enable = false;
          clickMethod = "Left";
          messageContextMenu = false;
        };
        voiceChatDoubleClick = {
          enable = false;
        };
        voiceDownload = {
          enable = false;
        };
        voiceMessages = {
          enable = false;
          echoCancellation = true;
          noiseSuppression = true;
        };
        volumeBooster = {
          enable = false;
          multiplier = 2.0;
        };
        webContextMenus = {
          enable = false;
          addBack = false;
        };
        webKeybinds = {
          enable = false;
        };
        webRichPresence = {
          enable = false;
        };
        webScreenShareFixes = {
          enable = false;
        };
        xsOverlay = {
          enable = false;
          botNotifications = false;
          callNotifications = true;
          channelPingColor = "#c6a0f6";
          dmNotifications = true;
          groupDmNotifications = true;
          lengthBasedTimeout = true;
          opacity = 1.0;
          pingColor = "#8aadf4";
          preferUdp = false;
          serverNotifications = true;
          soundPath = "default";
          timeout = 3;
          volume = 0.2;
          webSocketPort = 42070;
        };
        youtubeAdblock = {
          enable = true;
        };
        #####################
        ## vencord plugins ##
        #####################
        alwaysExpandRoles = {
          enable = true;
          hideArrow = false;
        };
        alwaysTrust = {
          enable = true;
          domain = true;
          file = true;
          noDeleteSafety = true;
          confirmModal = true;
        };
        anonymiseFileNames = {
          enable = false;
          anonymiseByDefault = true;
          consistent = "image";
          dateFormat = "YYYY-MM-DD_HH-mm-ss-SSS";
          method = 0;
          randomisedLength = 7;
          spoilerMessages = false;
        };
        autoDndWhilePlaying = {
          enable = false;
          excludeInvisible = false;
          statusToSet = "dnd";
        };
        betterFolders = {
          enable = true;
          sidebar = false;
          showFolderIcon = 1;
          keepIcons = false;
          closeAllHomeButton = false;
          closeAllFolders = false;
          forceOpen = false;
          sidebarAnim = true;
          closeOthers = false;
          nestedFolders = {};
          closeServerFolder = false;
          enableNestedFolders = true;
        };
        betterGifPicker = {
          enable = true;
          keepOpen = false;
        };
        blurNsfw = {
          enable = false;
          blurAllChannels = false;
          blurAmount = 10;
        };
        callTimer = {
          enable = true;
          format = "stopwatch";
          allCallTimers = false;
          watchLargeGuilds = false;
          showWithoutHover = false;
          showRoleColor = false;
          trackSelf = false;
          showSeconds = false;
        };
        devCompanion = {
          enable = false;
          notifyOnAutoConnect = true;
          reloadAfterToggle = true;
          usePatchedModule = true;
        };
        experiments = {
          enable = false;
          toolbarDevMenu = false;
        };
        favoriteEmojiFirst = {
          enable = false;
        };
        messageClickActions = {
          enable = false;
          addAdditionalReacts = false;
          additionalReactEmojis = "";
          clickTimeout = 300;
          deferDoubleClickForTriple = false;
          disableInDms = false;
          disableInSystemDms = true;
          doubleClickAction = "EDIT";
          doubleClickHoldThreshold = 150;
          doubleClickModifier = "NONE";
          doubleClickOthersAction = "REPLY";
          enableDeleteOnClick = true;
          enableDoubleClickToEdit = true;
          enableDoubleClickToReply = true;
          quoteWithReply = true;
          reactEmoji = "💀";
          requireModifier = false;
          selectionHoldTimeout = 300;
          singleClickAction = "DELETE";
          singleClickModifier = "BACKSPACE";
          singleClickOthersAction = "DELETE";
          singleClickOthersModifier = "BACKSPACE";
          tripleClickAction = "REACT";
          tripleClickModifier = "NONE";
          useSelectionForQuote = false;
        };
        messageLogger = {
          enable = true;
          collapseDeleted = false;
          deleteStyle = "overlay";
          ignoreBots = false;
          ignoreChannels = "";
          ignoreGuilds = "";
          ignoreSelf = false;
          ignoreSelfEdits = false;
          ignoreUsers = "";
          inlineEdits = true;
          logDeletes = true;
          logEdits = true;
          separatedDiffs = false;
          showEditDiffs = false;
        };
        moreQuickReactions = {
          enable = false;
          columns = 4.0;
          compactMode = false;
          frequentEmojis = true;
          reactionCount = 5;
          rows = 2.0;
          scroll = true;
        };
        newGuildSettings = {
          enable = true;
          events = true;
          everyone = true;
          guild = true;
          highlights = true;
          messages = 3;
          mobilePush = true;
          role = true;
          showAllChannels = true;
          voiceChannels = false;
        };
        noBlockedMessages = {
          enable = false;
          allowAutoModMessages = true;
          alsoHideIgnoredUsers = true;
          applyToIgnoredUsers = true;
          defaultHideUsers = true;
          disableNotifications = false;
          hideBlockedUserReplies = false;
          ignoreMessages = false;
          overrideUsers = "";
        };
        oneko = {
          enable = false;
        };
        onePingPerDm = {
          enable = false;
          allowEveryone = false;
          allowMentions = false;
          alwaysPlaySound = false;
          channelToAffect = "both_dms";
          ignoreUsers = "";
        };
        openInApp = {
          enable = false;
          epic = true;
          itunes = true;
          spotify = true;
          steam = true;
          telegram = true;
          tidal = true;
          vrcx = true;
        };
        platformIndicators = {
          enable = true;
          colorMobileIndicator = true;
          consoleIcon = "equicord";
          list = true;
          messages = true;
          profiles = true;
          showBots = true;
        };
        reviewDb = {
          enable = false;
          hideBlockedUsers = true;
          hideTimestamps = false;
          lastReviewId = 0;
          notifyReviews = true;
          reviewsDropdownState = false;
          showWarning = true;
        };
        serverInfo = {
          enable = false;
          sorting = "displayname";
        };
        showHiddenChannels = {
          enable = false;
          channelStyle = 0;
          defaultAllowedUsersAndRolesDropdownState = true;
          hideUnreads = true;
          showMode = 0;
        };
        showMeYourName = {
          enable = false;
          alwaysShowEffects = false;
          animateGradients = false;
          customNameColor = "Role-25";
          customNameOnlyInDirectMessages = false;
          discriminators = true;
          displayNameColor = "Role-25";
          displayNames = false;
          friendNameColor = "Role-25";
          friendNameOnlyInDirectMessages = false;
          friendNicknames = "dms";
          hideDefaultAtSign = false;
          ignoreFonts = false;
          ignoreGradients = true;
          inReplies = false;
          includedNames = "{custom, friend, nick} [{display}] (@{user})";
          memberList = true;
          mentions = true;
          messages = true;
          mode = "user-nick";
          nameSeparator = " ";
          nicknameColor = "Role-25";
          profilePopout = true;
          reactions = true;
          removeDuplicates = true;
          replies = true;
          triggerNameRerender = false;
          truncateAllNamesWithStreamerMode = true;
          typingIndicator = true;
          usernameColor = "Role-25";
          voiceChannels = true;
        };
        silentTyping = {
          enable = true;
          chatContextMenu = true;
          chatIcon = true;
          chatIconLeftClickAction = "channel";
          chatIconMiddleClickAction = "settings";
          chatIconRightClickAction = "global";
          contextMenu = true;
          defaultHidden = true;
          disabledLocations = "";
          enabledGlobally = true;
          enabledLocations = "";
          hideChatBoxTypingIndicators = false;
          hideMembersListTypingIndicators = true;
          isEnabled = true;
          showIcon = false;
        };
        sortFriendRequests = {
          enable = false;
          showDates = false;
        };
        spotifyControls = {
          enable = false;
          hoverControls = false;
          previousButtonRestartsTrack = true;
          useSpotifyUris = false;
        };
        textReplace = {
          enable = false;
          regexRules = [];
          stringRules = [];
        };
        typingIndicator = {
          enable = true;
          includeBlockedUsers = false;
          includeCurrentChannel = true;
          includeIgnoredUsers = false;
          includeMutedChannels = false;
          indicatorMode = 3;
        };
        typingTweaks = {
          enable = false;
          alternativeFormatting = true;
          amITyping = true;
          showAvatars = true;
          showRoleColors = true;
        };
        vencordToolbox = {
          enable = false;
          showPluginMenu = true;
        };
        whoReacted = {
          enable = false;
          avatarClick = false;
        };
        ###########################
        ## equicord only plugins ##
        ###########################
        altKrispSwitch = {
          enable = false;
        };
        alwaysExpandProfiles = {
          enable = false;
        };
        animalese = {
          enable = false;
          messageLengthLimit = 50;
          pitch = 1.0;
          processOwnMessages = true;
          soundQuality = "high";
          speed = 1.0;
          volume = 0.5;
        };
        atSomeone = {
          enable = false;
        };
        autoZipper = {
          enable = false;
          extensions = ".psd,.blend,.exe,.dmg,.app,.apk,.iso";
        };
        bannersEverywhere = {
          enable = false;
          animate = false;
          preferNameplate = false;
        };
        betterActivities = {
          enable = false;
          allActivitiesStyle = "carousel";
          hideTooltip = true;
          iconSize = 15.0;
          memberList = true;
          removeGameActivityStatus = false;
          renderGifs = true;
          specialFirst = true;
          userPopout = true;
        };
        betterAudioPlayer = {
          enable = false;
          oscilloscope = true;
          oscilloscopeColor = "#ffffff";
          oscilloscopeSolidColor = false;
          spectrograph = true;
          spectrographColor = "33, 150, 243";
          spectrographSolidColor = false;
        };
        betterBanReasons = {
          enable = false;
          isTextInputDefault = false;
          reasons = [];
        };
        betterBlockedUsers = {
          enable = false;
        };
        betterCommands = {
          enable = false;
          allowNewlinesInCommands = true;
          autoFillArguments = true;
        };
        betterGifLoad = {
          enable = false;
          gifQuality = 1;
        };
        betterInvites = {
          enable = false;
        };
        betterPlusReacts = {
          enable = false;
        };
        blockKeywords = {
          enable = false;
          blockedWords = "";
          caseSensitive = false;
          ignoreBlockedMessages = true;
          useRegex = false;
        };
        blockKrisp = {
          enable = false;
        };
        bypassPinPrompt = {
          enable = false;
        };
        bypassStatus = {
          enable = false;
          allowOutsideOfDms = false;
          channels = "";
          guilds = "";
          notificationSound = true;
          respectSilentPings = true;
          statusToUse = "dnd";
          users = "";
        };
        cancelFriendRequest = {
          enable = false;
        };
        channelBadges = {
          enable = false;
          announcementBadgeColor = null;
          announcementBadgeLabel = "News";
          announcementThreadBadgeColor = null;
          announcementThreadBadgeLabel = "News Thread";
          categoryBadgeColor = null;
          categoryBadgeLabel = "Category";
          directoryBadgeColor = null;
          directoryBadgeLabel = "Directory";
          forumBadgeColor = null;
          forumBadgeLabel = "Forum";
          lockedBadgeColor = null;
          lockedBadgeLabel = "Locked";
          mediaBadgeColor = null;
          mediaBadgeLabel = "Media";
          nsfwBadgeColor = null;
          nsfwBadgeLabel = "NSFW";
          oneBadgePerChannel = false;
          privateThreadBadgeColor = null;
          privateThreadBadgeLabel = "Private Thread";
          publicThreadBadgeColor = null;
          publicThreadBadgeLabel = "Thread";
          rulesBadgeColor = null;
          rulesBadgeLabel = "Rules";
          showAnnouncementBadge = true;
          showAnnouncementThreadBadge = true;
          showCategoryBadge = true;
          showDirectoryBadge = true;
          showForumBadge = true;
          showLockedBadge = true;
          showMediaBadge = true;
          showNsfwBadge = true;
          showPrivateThreadBadge = true;
          showPublicThreadBadge = true;
          showRulesBadge = true;
          showStageBadge = true;
          showTextBadge = true;
          showUnknownBadge = true;
          showVoiceBadge = true;
          stageBadgeColor = null;
          stageBadgeLabel = "Stage";
          textBadgeColor = null;
          textBadgeLabel = "Text";
          unknownBadgeColor = null;
          unknownBadgeLabel = "Unknown";
          voiceBadgeColor = null;
          voiceBadgeLabel = "Voice";
        };
        channelTabs = {
          enable = false;
          animationCloseRotation = true;
          animationCompactExpand = true;
          animationDragDrop = true;
          animationEnterExit = true;
          animationHover = true;
          animationIconPop = true;
          animationMentionGlow = true;
          animationPlusPulse = true;
          animationQuestsActive = true;
          animationResizeHandle = true;
          animationSelectedBackground = true;
          animationSelectedBorder = true;
          animationSelection = true;
          animationTabPositioning = true;
          animationTabShadows = true;
          bookmarkNotificationDot = true;
          bookmarksIndependentFromTabs = true;
          closeTabKeybind = "CTRL+W";
          compactAutoExpandOnHover = true;
          compactAutoExpandSelected = true;
          createNewTabIfNotExists = false;
          cycleTabBackwardKeybind = "CTRL+SHIFT+TAB";
          cycleTabForwardKeybind = "CTRL+TAB";
          enableCloseTabShortcut = true;
          enableNewTabShortcut = true;
          enableNumberKeySwitching = true;
          enableRapidNavigation = false;
          enableTabCycleShortcut = true;
          maxOpenTabs = 0.0;
          newTabButtonBehavior = true;
          newTabKeybind = "CTRL+T";
          noPomeloNames = false;
          numberKeySwitchCount = 3.0;
          onStartup = "nothing";
          oneTabPerServer = false;
          openInNewTabAutoSwitch = true;
          openNewTabsInCompactMode = false;
          persistUnreadCountFallback = true;
          rapidNavigationThreshold = 3.0;
          renderAllTabs = false;
          showBookmarkBar = true;
          showResizeHandle = true;
          showStatusIndicators = true;
          showTabNumbers = false;
          switchToExistingTab = false;
          tabBarPosition = "top";
          tabHeightScale = 100;
          tabNumberPosition = "left";
          tabSet = {};
          tabWidthScale = 100;
          widerTabsAndBookmarks = false;
        };
        cleanChannelName = {
          enable = false;
        };
        cleanerChannelGroups = {
          enable = false;
        };
        clickableRoles = {
          enable = false;
        };
        clientSideBlock = {
          enable = false;
          blockedReplyDisplay = "displayText";
          guildBlackList = "";
          guildWhiteList = "";
          hideBlockedMessages = true;
          hideBlockedUsers = true;
          hideEmptyRoles = true;
          hideVc = false;
          usersToBlock = "";
        };
        clipsEnhancements = {
          enable = false;
          richPresenceTagging = "whenMatched";
        };
        clipUpload = {
          enable = false;
        };
        commandPalette = {
          enable = false;
          closeAfterExecute = true;
          hotkey = {};
        };
        contentWarning = {
          enable = false;
          onClick = false;
          triggerWords = null;
        };
        copyProfileColors = {
          enable = false;
        };
        copyStatusUrls = {
          enable = false;
        };
        copyUserMention = {
          enable = false;
        };
        customFolderIcons = {
          enable = false;
          solidIcon = false;
        };
        customSounds = {
          enable = false;
        };
        customStatusTimeouts = {
          enable = false;
        };
        questify = {
          allowChangingDangerousSettings = true;
          autoCompleteQuestTypes = {
            PLAY_ON_DESKTOP = true;
            PLAY_ON_XBOX = true;
            PLAY_ON_PLAYSTATION = true;
            PLAY_ACTIVITY = true;
            WATCH_VIDEO = true;
            WATCH_VIDEO_ON_MOBILE = true;
            ACHIEVEMENT_IN_ACTIVITY = true;
          };
          autoCompleteQuestsSimultaneously = true;
          claimedSubsort = "Claimed DESC";
          completeVideoQuestsQuicker = true;
          disableAccountPanelPromo = true;
          disableAccountPanelQuestProgress = false;
          disableFriendsListPromo = true;
          disableMembersListPromo = true;
          disableOrbsAndQuestsBadges = false;
          disableQuestsEverything = false;
          disableRelocationNotices = true;
          disableSponsoredBanner = false;
          enable = true;
          expiredSubsort = "Expiring DESC";
          ignoredQuestIds = {
            questIDs = [];
          };
          ignoredSubsort = "Recent DESC";
          isOnQuestsPage = false;
          lastQuestPageFilters = {};
          lastQuestPageSort = "suggested";
          makeMobileVideoQuestsDesktopCompatible = true;
          migrationVersion = 1;
          newExcludedQuestAlertSound = null;
          newExcludedQuestAlertVolume = 100;
          newQuestAlertSound = "discodo";
          newQuestAlertVolume = 100;
          notifyOnNewExcludedQuests = false;
          notifyOnNewQuests = true;
          notifyOnQuestComplete = true;
          questButtonBadgeColor = 2842239;
          questButtonBadgeCount = 0;
          questButtonDisplay = "always";
          questButtonIncludedTypes = {};
          questButtonIndicator = "both";
          questButtonLeftClickAction = "open-quests";
          questButtonMiddleClickAction = "plugin-settings";
          questButtonRightClickAction = "context-menu";
          questCompletedAlertSound = "bop_message1";
          questCompletedAlertVolume = 100;
          questFetchInterval = 2700;
          questOrder = [
            "UNCLAIMED"
            "CLAIMED"
            "IGNORED"
            "EXPIRED"
          ];
          questTileClaimedColor = {};
          questTileExpiredColor = {};
          questTileGradient = "intense";
          questTileIgnoredColor = {};
          questTilePreload = true;
          questTileUnclaimedColor = {};
          rememberQuestPageFilters = true;
          rememberQuestPageSort = true;
          resumeInterruptedQuests = true;
          resumeQuestIds = {};
          unclaimedSubsort = "Expiring ASC";
        };
      };
    };
  };
}
